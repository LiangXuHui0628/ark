package com.siro.ark.web.config.sitemesh;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

/**
 *
 */
public class WebSiteMeshFilter extends ConfigurableSiteMeshFilter {

    /** 需要装饰的访问路径 */

    private String contentPath="/sys/user,/sys/menu,/sys/dict,/sys/role,/sys/office,/sys/,/index,/monitor/*," +
            "/blog/content**,/404,/model,/process,/product,/study,/resources,/user/**,/support,/blog,/aboutDeveloper";

    /** 公共装饰器页面路径 */
    private String pubDecoratorPath="/layouts";

    /** api装饰器页面路径 */
    private String apiDecoratorPath = "/apiLayouts" ;

    private String apiContentPath = "/study/**,/page/**" ;

    /** api装饰器页面路径 */
    private String userCenterDecoratorPath = "/admin" ;

    private String userCenterContentPath = "/admin/**" ;

    /** 不需要装饰的访问路径,多个之间用英文逗号分隔 */

    private String excludedPaths="*.js,*.css,*.html,/admin/apkManager/insert,/admin/versionManager/insert," +
            "/user/center/insert,/admin/userApprove/update/**,/admin/company/insert";

    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {

        // 通过配置文件
        if (contentPath == null) {
            return;
        }
        String[] contentPaths = contentPath.split(",");
        for (String path : contentPaths) {
            builder.addDecoratorPath(path, pubDecoratorPath);
        }

        String[] apiContentPaths = apiContentPath.split(",");
        for (String path : apiContentPaths) {
            builder.addDecoratorPath(path, apiDecoratorPath);
        }

        String[] userCenterContentPaths = userCenterContentPath.split(",");
        for (String path : userCenterContentPaths) {
            builder.addDecoratorPath(path, userCenterDecoratorPath);
        }

        if (excludedPaths == null) {
            return;
        }
        String[] paths = excludedPaths.split(",");
        for (String path : paths) {
            builder.addExcludedPath(path);
        }
        builder.addTagRuleBundle(new ScriptTagRuleBundle());
    }
}
