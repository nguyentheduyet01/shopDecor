import RootLayout from "../../layouts/RootLayout";

// eslint-disable-next-line import/no-anonymous-default-export
export default () => {
  return (
    <RootLayout
      top={
        <>
          <h2>Top</h2>
        </>
      }
      bottom={
        <>
          <h1>Bottom</h1>
        </>
      }
      center={
        <>
          <h1>Content</h1>
        </>
      }
    />
  );
};
