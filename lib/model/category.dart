/**
 * 作者：leavesC
 * 时间：2019/10/22 9:31
 * 描述：
 */
class CategoryBean {
  final String name;

  final List<WidgetBean> children;

  CategoryBean(this.name, this.children);
}

class WidgetBean {
  final String name;

  final String routePath;

  WidgetBean(this.name, this.routePath);
}
