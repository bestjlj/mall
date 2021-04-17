package com.bjpowernode.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CategoryTree {
    private List<CategoryNode> treeList;
    private Map<Long, CategoryNode> tree = new HashMap<Long, CategoryNode>();

    public CategoryTree() {
    }

    public CategoryTree(List<CategoryNode> treeList) {
        this.treeList = treeList;
        this.buildTree();
    }

    private void buildTree() {
        CategoryNode root = new CategoryNode();
        tree.put(1L, root);
        for (int i = 0; i < treeList.size(); i++) {
            CategoryNode node = (CategoryNode) treeList.get(i);
            if ("0".equals(node.getParentId())) {
                root.addChild(node);
                tree.put(node.getCategoryId(), node);
            } else {
                if (tree.containsKey(node.getParentId())) {
                    CategoryNode parentNode = (CategoryNode) tree.get(node.getParentId());
                    parentNode.addChild(node);
                    tree.put(node.getCategoryId(), node);
                } else {
                    tree.put(node.getCategoryId(), node);
                }
            }
        }
    }

    public CategoryNode getTree() {
        CategoryNode node = (CategoryNode) tree.get(1L);
        return node;
    }

    public static void main(String[] args) {
        List<CategoryNode> nodes = new ArrayList<CategoryNode>();
        nodes.add(new CategoryNode(1L, 0L, "ȫ����Ʒ"));
        nodes.add(new CategoryNode(2L, 1L, "�ֻ�"));
        nodes.add(new CategoryNode(3L, 1L, "����Ӳ��"));
        nodes.add(new CategoryNode(4L, 1L, "�ʼǱ�  ƽ��"));
        nodes.add(new CategoryNode(5L, 1L, "·����  �ƶ���Դ"));
        nodes.add(new CategoryNode(6L, 1L, "�ܱ����"));
        nodes.add(new CategoryNode(7L, 1L, "����  ����"));
        nodes.add(new CategoryNode(8L, 1L, "������  ��Ĥ"));
        nodes.add(new CategoryNode(9L, 1L, "�����ܱ�"));
        nodes.add(new CategoryNode(10L, 3L, "�ֻ������"));
        nodes.add(new CategoryNode(11L, 3L, "���ܵ�"));
        nodes.add(new CategoryNode(12L, 3L, "���ܼҾ�"));
        nodes.add(new CategoryNode(13L, 3L, "���ܽ���"));
        nodes.add(new CategoryNode(15L, 4L, "�ʼǱ�����"));
        nodes.add(new CategoryNode(16L, 4L, "ƽ�����"));
        nodes.add(new CategoryNode(17L, 5L, "·����"));
        nodes.add(new CategoryNode(18L, 5L, "�ƶ���Դ"));
        nodes.add(new CategoryNode(19L, 5L, "·�������"));
        nodes.add(new CategoryNode(20L, 6L, "���߰�"));
        nodes.add(new CategoryNode(21L, 6L, "�洢��"));
        nodes.add(new CategoryNode(22L, 6L, "�ƶ�Ӳ��"));
        nodes.add(new CategoryNode(23L, 7L, "ͷ��ʽ����"));
        nodes.add(new CategoryNode(24L, 7L, "��������"));
        nodes.add(new CategoryNode(25L, 7L, "��������"));
        nodes.add(new CategoryNode(26L, 7L, "����"));
        nodes.add(new CategoryNode(27L, 8L, "��Ĥ"));
        nodes.add(new CategoryNode(28L, 8L, "������  ������"));
        nodes.add(new CategoryNode(29L, 8L, "�ƶ���Դ������"));
        nodes.add(new CategoryNode(30L, 9L, "���"));
        nodes.add(new CategoryNode(31L, 9L, "��װ"));
        nodes.add(new CategoryNode(32L, 1L, "���ܼҵ�"));
        nodes.add(new CategoryNode(33L, 2L, "С���ֻ�"));
        CategoryTree tree = new CategoryTree(nodes);
        CategoryNode root = tree.getTree();
        //CategoryNode nodee = tree.query(root, 3L);
        tree.query(root, 3L);
        //System.out.println(nodee.toString()+"****");
        //select(node);

    }

    public Boolean query(CategoryNode node, Long categoryId) {
        if(node == null) return false;
        if(categoryId == node.getCategoryId()) {
            System.out.println(categoryId + node.getName());
            System.out.println("!!"+node.toString());
            return true;
        } else {
            List<CategoryNode> children = node.getChildren();
            for (CategoryNode nodee : children) {
                System.out.println(nodee.toString());
                return query(nodee, categoryId);
            }
            return false;
        }
    }

    //�����ýڵ��µ�Ҷ�ӽڵ�
    public static void select(CategoryNode node) {
        if(node.getChildren().size() == 0 ) {
            System.out.println(node.getName());
        } else {
            List<CategoryNode> children = node.getChildren();
            for (CategoryNode nodee : children) {
                select(nodee);
            }
        }
    }
}
