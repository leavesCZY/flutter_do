///@Author: leavesC
///@Date: 2020/11/4 16:29
///@Desc:
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
