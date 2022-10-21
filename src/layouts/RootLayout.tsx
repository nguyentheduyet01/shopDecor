import React from "react";

// eslint-disable-next-line import/no-anonymous-default-export
export default function (props: {
  bottom: React.ReactNode;
  center: React.ReactNode;
  top: React.ReactNode;
}) {
  return (
    <div style={{ flex: "calc(100vw - 60px)"}}>
      <div>{props.top}</div>
      <div style={{ background: "#f0f2f6", height: "calc(100vh - 50px)" }}>
        {props.center}
      </div>
      <div>{props.bottom}</div>
    </div>
  );
}
