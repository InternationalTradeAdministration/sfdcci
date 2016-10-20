trigger Order_Events on Order (after update) {
    Order_Events_Controller controller = new Order_Events_Controller(trigger.new);
    controller.updateAssets();
}