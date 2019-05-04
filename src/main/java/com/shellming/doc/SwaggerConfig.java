package com.shellming.doc;



import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@WebAppConfiguration
@EnableSwagger2//重要！
@EnableWebMvc
@ComponentScan(basePackages = "com.shellming.controller")
public class SwaggerConfig {
    public Docket userApi(){
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.shellming.controller"))
                    .paths(PathSelectors.any()).build();

    }
    private ApiInfo apiInfo(){
        return  new ApiInfoBuilder()
                .title("FlowerSale RESTful APIs")
                .description("不解释看着调吧！")
                .termsOfServiceUrl("https://www.google.com")
                .contact("ShellMing")
                .version("0.1")
                .build();
    }

}
