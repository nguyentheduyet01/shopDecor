import { Menu, Tabs } from "antd";
import React from "react";
// eslint-disable-next-line import/no-anonymous-default-export
export default () => {
    const onChange = (key: string) => {
        console.log(key);
      };
  return <>
  <div>
    <div>account and searchbox in here</div>
    <div>
    <Tabs defaultActiveKey="1">
    <Tabs.TabPane tab="Tab 1" key="1">
      Content of Tab Pane 1
    </Tabs.TabPane>
    <Tabs.TabPane tab="Tab 2" key="2">
      Content of Tab Pane 2
    </Tabs.TabPane>
    <Tabs.TabPane tab="Tab 3" key="3">
      Content of Tab Pane 3
    </Tabs.TabPane>
  </Tabs>
    </div>
  </div>
  </>;
};
