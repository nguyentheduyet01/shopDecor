import Header from "../../components/header";
import RootLayout from "../../layouts/RootLayout";

// eslint-disable-next-line import/no-anonymous-default-export
export default () => {
  return (
    <RootLayout
      top={
        <>
          <Header/>
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
