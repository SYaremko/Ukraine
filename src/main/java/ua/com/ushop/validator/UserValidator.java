package ua.com.ushop.validator;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import ua.com.ushop.entity.User;
import ua.com.ushop.service.UserService;

@Component
public class UserValidator implements Validator {
    @Autowired
    private UserService userService;

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;
        /*username*/
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "no", "This field is required.");
        if(user.getUsername().length()<= 2 || user.getUsername().length()> 32){
            errors.rejectValue("username", "errors", "Login must be between 2 and 32 characters.");
                    }
        if(userService.findUserByUsername(user.getUsername())!=null){
            errors.rejectValue("username", "errors", "Such login already exists.");
                   }

        /*first name*/
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "no", "This field is required.");
        if(user.getFirstName().length()<= 2 || user.getFirstName().length()> 32){
            errors.rejectValue("firstName", "errors", "First Name must be between 2 and 32 characters.");
        }

       /*password*/
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "no", "This field is required.");
        if(user.getPassword().length()<= 2 || user.getPassword().length()> 32){
            errors.rejectValue("password", "errors", "Password must be over 2 characters.");
                    }
        if (!user.getConfirmPassword().equals(user.getPassword())){
            errors.rejectValue("confirmPassword", "errors", "Passwords don't match.");
                    }
        /*email*/
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "no", "This field is required.");
        if(user.getEmail().length()<= 4 || user.getEmail().length()> 32){
            errors.rejectValue("email", "errors", "Email must be over 4 characters.");
        }
        if(userService.findUserByEmail(user.getEmail())!=null){
            errors.rejectValue("email", "errors", "Such email already exists.");

    }

}}
