import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/tree_view_custom/controller/tree_node_controller.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/tree_view_custom/node/node_model.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/tree_view_custom/tree_view.dart';

class TreeViewController<T> extends ChangeNotifier {
  final GetNode<T> call;
  TreeViewController({required this.call});

  TreeNodeController? _rootController;
  final List<NodeModel<T>> _data = <NodeModel<T>>[];
  List<NodeModel<T>> get data => _data;

  void generateToTreeNode() async {
    reBuilder();
    _data.addAll(await call());
    reBuilder();
  }

  void addNewNode(NodeModel<T> parentNode, NodeModel<T>? childNode) {
    reBuilder();

  }

  void removeNode(NodeModel<T> parentNode){

  }

  // int getNodeIndex(Node)

  void reBuilder() {
    notifyListeners();
  }
}
