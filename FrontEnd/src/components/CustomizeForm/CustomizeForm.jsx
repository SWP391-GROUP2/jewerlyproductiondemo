import React, { useEffect, useState } from "react";
import "./CustomizeForm.css";
import { useLocation } from "react-router-dom";

function CustomizeForm() {
  const location = useLocation();
  const { state } = location;
  const { item } = state || {}; // Lấy dữ liệu từ state
  const [type, setselectedType] = useState();
  const [style, setselectedStyle] = useState("");
  const [goldType, setselectedGold] = useState("");
  const [size, setselectedSize] = useState("");
  const [quantity, setselectedQuantity] = useState("1");
  const [shape, setShape] = useState("");
  const [gemstoneSize, setGemstoneSize] = useState("all");
  const [gemstoneType, setGemstoneType] = useState("");
  const [gemstoneColor, setGemstoneColor] = useState("all");
  const [gemstoneClarity, setGemstoneClarity] = useState("all");
  const [gemstoneCarat, setGemstoneCarat] = useState("all");

  useEffect(() => {
    if (item) {
      setselectedType(item);
    }
  }, [item]);

  const onClickSelectedShape = (event) => {
    const element = event.currentTarget;
    const idValue = element.id;
    setShape(idValue);
  };

  const getClassNamesShape = (gemstoneshape) => {
    return `gemstoneShape${
      shape === gemstoneshape ? " col-shape-selected" : ""
    }`;
  };

  const onClickSelectedGemstoneSize = (gemstonesize) => {
    setGemstoneSize(gemstonesize);
  };

  const getClassNames = (gemstonesize) => {
    return `grid-size-item${
      gemstoneSize === gemstonesize ? " col-size-selected" : ""
    }`;
  };

  const onClickSelectedGemstoneType = (gemstonetype) => {
    setGemstoneType(gemstonetype);
  };

  const getClassNamesType = (gemstonetype) => {
    return `grid-size-item${
      gemstoneType === gemstonetype ? " col-size-selected" : ""
    }`;
  };

  const onClickSelectedGemstoneColor = (color) => {
    setGemstoneColor(color);
  };

  const getClassNamesColor = (color) => {
    return `grid-size-item ${
      gemstoneColor === color ? "col-size-selected" : ""
    }`;
  };

  const onClickSelectedClarity = (clarity) => {
    setGemstoneClarity(clarity);
  };

  const getClassNamesClarity = (clarity) => {
    return `grid-size-item ${
      gemstoneClarity === clarity ? "col-size-selected" : ""
    }`;
  };

  const onClickSelectedCarat = (carat) => {
    setGemstoneCarat(carat);
  };

  const getClassNamesCarat = (carat) => {
    return `grid-size-item ${
      gemstoneCarat === carat ? "col-size-selected" : ""
    }`;
  };

  const Style = [
    { value: "Solitaire", label: "Solitaire", Image: "" },
    { value: "Three Stone", label: "Three Stone", Image: "" },
    { value: "Pave", label: "Pave", Image: "" },
    // Add more options here
  ];

  const gold = [
    { value: "Gold 9999", label: "Gold 9999" },
    { value: "Gold 999", label: "Gold 999" },
    { value: "Gold 98", label: "Gold 98" },
    { value: "Gold 75", label: "Gold 75" },
    { value: "Gold 58.3", label: "Gold 58.3" },
    { value: "White Gold", label: "White Gold" },
    { value: "Gold 14k", label: "Gold 14k" },
    { value: "Italy Gold", label: "Italy Gold" },
    // Add more options here
  ];

  const Size = [
    { value: "6", label: "6" },
    { value: "7", label: "7" },
    { value: "8", label: "8" },
    { value: "9", label: "9" },
    { value: "10", label: "10" },
    { value: "11", label: "11" },
    { value: "12", label: "12" },
    { value: "13", label: "13" },
    { value: "14", label: "14" },
    { value: "15", label: "15" },
    { value: "16", label: "16" },
    { value: "17", label: "17" },
    { value: "18", label: "18" },
    { value: "19", label: "19" },
    { value: "20", label: "20" },

    // Add more options here
  ];

  const gemstones = [
    {
      gemstoneid: 1,
      name: "Ruby",
      size: "10mm",
      color: "Red",
      clarity: "VS",
      price: "$1000",
    },
    {
      gemstoneid: 2,
      name: "Emerald",
      size: "8mm",
      color: "Green",
      clarity: "SI",
      price: "$800",
    },
    {
      gemstoneid: 3,
      name: "Sapphire",
      size: "9mm",
      color: "Blue",
      clarity: "VVS",
      price: "$1200",
    },
  ];

  const handleCreate = (e) => {
    e.preventDefault();
    const newCustomizeRequest = {
      type: type,
      style: style,
      goldType: goldType,
      shape: shape,
    };
  };

  return (
    <div className="customizer-container">
      <main className="main-content">
        <form className="CUS" onSubmit={handleCreate}>
          <h1 className="title">Customize Your Jewelry</h1>
          <h2 className="subtitle">{item && <p>Selected Item: {item} </p>}</h2>
          <div className="customize-options-wrapper">
            <div className="customize-options">
              <div className="option-section">
                <div className="style">
                  <h3>STYLE</h3>
                  <div className="options-grid">
                    <select
                      value={style}
                      onChange={(e) => setselectedStyle(e.target.value)}
                    >
                      {Style.map((Style) => (
                        <option key={Style.value} value={Style.value}>
                          {Style.label}
                        </option>
                      ))}
                    </select>
                  </div>
                </div>
                <div className="gold">
                  <h3>GOLD</h3>
                  <div className="options-grid">
                    <select
                      value={goldType}
                      onChange={(e) => setselectedGold(e.target.value)}
                    >
                      {gold.map((gold) => (
                        <option key={gold.value} value={gold.value}>
                          {gold.label}
                        </option>
                      ))}
                    </select>
                  </div>
                </div>
              </div>
              <div className="option-section">
                <div className="size">
                  <h3>SIZE</h3>
                  <div className="options-grid">
                    <select
                      value={size}
                      onChange={(e) => setselectedSize(e.target.value)}
                    >
                      {Size.map((Size) => (
                        <option key={Size.value} value={Size.value}>
                          {Size.label}
                        </option>
                      ))}
                    </select>
                  </div>
                </div>
                <div className="quantity">
                  <h3>QUANTITY</h3>
                  <div className="options-grid">
                    <input
                      className="input-quantity"
                      type="number"
                      min="1"
                      max="20"
                      value={quantity}
                      onChange={(e) => setselectedQuantity(e.target.value)}
                    ></input>
                  </div>
                </div>
              </div>
              <div className="tiltegemstone">
                <h3>GEMSTONE</h3>
              </div>

              <div className="option-section">
                <div className="shape">
                  <h3 className="left-aligned-heading">SHAPE</h3>
                  <div className="grid-cols-5">
                    <div
                      id="round"
                      className={getClassNamesShape("round")}
                      onClick={onClickSelectedShape}
                    >
                      <img src="//theme.hstatic.net/200000567741/1000979581/14/hinh-danh-1.png?v=5351" />
                    </div>
                    <div
                      id="emerald"
                      className={getClassNamesShape("emerald")}
                      onClick={onClickSelectedShape}
                    >
                      <img src="//theme.hstatic.net/200000567741/1000979581/14/hinh-dang-5.png?v=5351" />
                    </div>
                    <div
                      id="marquise"
                      className={getClassNamesShape("marquise")}
                      onClick={onClickSelectedShape}
                    >
                      <img src="//theme.hstatic.net/200000567741/1000979581/14/hinh-dang-8.png?v=5351" />
                    </div>
                    <div
                      id="princess"
                      className={getClassNamesShape("princess")}
                      onClick={onClickSelectedShape}
                    >
                      <img src="//theme.hstatic.net/200000567741/1000979581/14/hinh-dang-2.png?v=5351" />
                    </div>
                    <div
                      id="radiant"
                      className={getClassNamesShape("radiant")}
                      onClick={onClickSelectedShape}
                    >
                      <img src="//theme.hstatic.net/200000567741/1000979581/14/hinh-dang-10.png?v=5351" />
                    </div>
                    <div
                      id="heart"
                      className={getClassNamesShape("heart")}
                      onClick={onClickSelectedShape}
                    >
                      <img src="//theme.hstatic.net/200000567741/1000979581/14/hinh-dang-6.png?v=5351" />
                    </div>
                    <div
                      id="pear"
                      className={getClassNamesShape("pear")}
                      onClick={onClickSelectedShape}
                    >
                      <img src="//theme.hstatic.net/200000567741/1000979581/14/hinh-dang-7.png?v=5351" />
                    </div>
                    <div
                      id="cushion"
                      className={getClassNamesShape("cushion")}
                      onClick={onClickSelectedShape}
                    >
                      <img src="//theme.hstatic.net/200000567741/1000979581/14/hinh-dang-3.png?v=5351" />
                    </div>
                    <div
                      id="trillion"
                      className={getClassNamesShape("trillion")}
                      onClick={onClickSelectedShape}
                    >
                      <img src="//theme.hstatic.net/200000567741/1000979581/14/hinh-dang-9.png?v=5351" />
                    </div>
                    <div
                      id="oval"
                      className={getClassNamesShape("oval")}
                      onClick={onClickSelectedShape}
                    >
                      <img src="//theme.hstatic.net/200000567741/1000979581/14/hinh-dang-4.png?v=5351" />
                    </div>
                  </div>
                </div>

                <div className="quantity">
                  <h3 className="left-aligned-heading">SIZE</h3>
                  <div className="grid-size-carat">
                    <div
                      id="all"
                      className={getClassNames("all")}
                      onClick={() => onClickSelectedGemstoneSize("all")}
                    >
                      All
                    </div>
                    <div
                      id="45"
                      className={getClassNames("45")}
                      onClick={() => onClickSelectedGemstoneSize("45")}
                    >
                      4.5
                    </div>
                    <div
                      id="50"
                      className={getClassNames("50")}
                      onClick={() => onClickSelectedGemstoneSize("50")}
                    >
                      5.0
                    </div>
                    <div
                      id="54"
                      className={getClassNames("54")}
                      onClick={() => onClickSelectedGemstoneSize("54")}
                    >
                      5.4
                    </div>
                    <div
                      id="60"
                      className={getClassNames("60")}
                      onClick={() => onClickSelectedGemstoneSize("60")}
                    >
                      6.0
                    </div>
                    <div
                      id="63"
                      className={getClassNames("63")}
                      onClick={() => onClickSelectedGemstoneSize("63")}
                    >
                      6.3
                    </div>
                    <div
                      id="65"
                      className={getClassNames("65")}
                      onClick={() => onClickSelectedGemstoneSize("65")}
                    >
                      6.5
                    </div>
                    <div
                      id="68"
                      className={getClassNames("68")}
                      onClick={() => onClickSelectedGemstoneSize("68")}
                    >
                      6.8
                    </div>
                    <div
                      id="72"
                      className={getClassNames("72")}
                      onClick={() => onClickSelectedGemstoneSize("72")}
                    >
                      7.2
                    </div>
                    <div
                      id="81"
                      className={getClassNames("81")}
                      onClick={() => onClickSelectedGemstoneSize("81")}
                    >
                      8.1
                    </div>
                    <div
                      id="90"
                      className={getClassNames("90")}
                      onClick={() => onClickSelectedGemstoneSize("90")}
                    >
                      9.0
                    </div>
                  </div>
                </div>
              </div>

              <div className="option-section">
                <div className="gemstonetype">
                  <h3 className="left-aligned-heading">TYPE</h3>
                  <div className="grid-type-gemstone">
                    <div
                      id="diamond"
                      className={getClassNamesType("diamond")}
                      onClick={() => onClickSelectedGemstoneType("diamond")}
                    >
                      Diamond
                    </div>
                    <div
                      id="emerald"
                      className={getClassNamesType("emerald")}
                      onClick={() => onClickSelectedGemstoneType("emerald")}
                    >
                      Emerald
                    </div>
                    <div
                      id="ruby "
                      className={getClassNamesType("ruby")}
                      onClick={() => onClickSelectedGemstoneType("ruby")}
                    >
                      Ruby
                    </div>
                    <div
                      id="sapphire  "
                      className={getClassNamesType("sapphire")}
                      onClick={() => onClickSelectedGemstoneType("sapphire")}
                    >
                      Sapphire
                    </div>
                    <div
                      id="pearl"
                      className={getClassNamesType("pearl")}
                      onClick={() => onClickSelectedGemstoneType("pearl")}
                    >
                      Pearl
                    </div>
                  </div>
                </div>

                <div className="color-selector">
                  <h3 className="left-aligned-heading">COLORS</h3>
                  <div className="grid-color-carat">
                    <div
                      id="all"
                      className={getClassNamesColor("all")}
                      onClick={() => onClickSelectedGemstoneColor("all")}
                    >
                      All
                    </div>
                    <div
                      id="white"
                      className={getClassNamesColor("white")}
                      onClick={() => onClickSelectedGemstoneColor("white")}
                    >
                      White
                    </div>
                    <div
                      id="yellow"
                      className={getClassNamesColor("yellow")}
                      onClick={() => onClickSelectedGemstoneColor("yellow")}
                    >
                      Yellow
                    </div>
                    <div
                      id="blue"
                      className={getClassNamesColor("blue")}
                      onClick={() => onClickSelectedGemstoneColor("blue")}
                    >
                      Blue
                    </div>
                    <div
                      id="pink"
                      className={getClassNamesColor("pink")}
                      onClick={() => onClickSelectedGemstoneColor("pink")}
                    >
                      Pink
                    </div>
                    <div
                      id="red"
                      className={getClassNamesColor("red")}
                      onClick={() => onClickSelectedGemstoneColor("red")}
                    >
                      Red
                    </div>
                    <div
                      id="green"
                      className={getClassNamesColor("green")}
                      onClick={() => onClickSelectedGemstoneColor("green")}
                    >
                      Green
                    </div>
                    <div
                      id="black"
                      className={getClassNamesColor("black")}
                      onClick={() => onClickSelectedGemstoneColor("black")}
                    >
                      Black
                    </div>
                    <div
                      id="cream"
                      className={getClassNamesColor("cream")}
                      onClick={() => onClickSelectedGemstoneColor("cream")}
                    >
                      Cream
                    </div>
                    <div
                      id="orange"
                      className={getClassNamesColor("orange")}
                      onClick={() => onClickSelectedGemstoneColor("orange")}
                    >
                      Orange
                    </div>
                    <div
                      id="purple"
                      className={getClassNamesColor("purple")}
                      onClick={() => onClickSelectedGemstoneColor("purple")}
                    >
                      Purple
                    </div>
                    <div
                      id="colorless"
                      className={getClassNamesColor("colorless")}
                      onClick={() => onClickSelectedGemstoneColor("colorless")}
                    >
                      Colorless
                    </div>
                  </div>
                </div>
              </div>
              <div className="option-section">
                <div className="clarity-selector">
                  <h3 className="left-aligned-heading">CLARITY</h3>
                  <div className="grid-clarity-carat">
                    <div
                      id="all"
                      className={getClassNamesClarity("all")}
                      onClick={() => onClickSelectedClarity("all")}
                    >
                      All
                    </div>
                    <div
                      id="FL"
                      className={getClassNamesClarity("FL")}
                      onClick={() => onClickSelectedClarity("FL")}
                    >
                      FL
                    </div>
                    <div
                      id="IF"
                      className={getClassNamesClarity("IF")}
                      onClick={() => onClickSelectedClarity("IF")}
                    >
                      IF
                    </div>
                    <div
                      id="VVS1"
                      className={getClassNamesClarity("VVS1")}
                      onClick={() => onClickSelectedClarity("VVS1")}
                    >
                      VVS1
                    </div>
                    <div
                      id="VVS2"
                      className={getClassNamesClarity("VVS2")}
                      onClick={() => onClickSelectedClarity("VVS2")}
                    >
                      VVS2
                    </div>
                    <div
                      id="VS1"
                      className={getClassNamesClarity("VS1")}
                      onClick={() => onClickSelectedClarity("VS1")}
                    >
                      VS1
                    </div>
                    <div
                      id="VS2"
                      className={getClassNamesClarity("VS2")}
                      onClick={() => onClickSelectedClarity("VS2")}
                    >
                      VS2
                    </div>
                    <div
                      id="SI1"
                      className={getClassNamesClarity("SI1")}
                      onClick={() => onClickSelectedClarity("SI1")}
                    >
                      SI1
                    </div>
                    <div
                      id="SI2"
                      className={getClassNamesClarity("SI2")}
                      onClick={() => onClickSelectedClarity("SI2")}
                    >
                      SI2
                    </div>
                  </div>
                </div>
                <div className="carat-selector">
                  <h3 className="left-aligned-heading">CARAT</h3>
                  <div className="grid-carat-carat">
                    <div
                      id="all"
                      className={getClassNamesCarat("all")}
                      onClick={() => onClickSelectedCarat("all")}
                    >
                      All
                    </div>
                    <div
                      id="0.3-0.49"
                      className={getClassNamesCarat("0.3-0.49")}
                      onClick={() => onClickSelectedCarat("0.3-0.49")}
                    >
                      0.3 - 0.49
                    </div>
                    <div
                      id="0.50-0.89"
                      className={getClassNamesCarat("0.50-0.89")}
                      onClick={() => onClickSelectedCarat("0.50-0.89")}
                    >
                      0.50 - 0.89
                    </div>
                    <div
                      id="0.90-1.29"
                      className={getClassNamesCarat("0.90-1.29")}
                      onClick={() => onClickSelectedCarat("0.90-1.29")}
                    >
                      0.90 - 1.29
                    </div>
                    <div
                      id="1.3-1.9"
                      className={getClassNamesCarat("1.3-1.9")}
                      onClick={() => onClickSelectedCarat("1.3-1.9")}
                    >
                      1.3 - 1.9
                    </div>
                    <div
                      id="2.0-3.0"
                      className={getClassNamesCarat("2.0-3.0")}
                      onClick={() => onClickSelectedCarat("2.0-3.0")}
                    >
                      2.0 - 3.0
                    </div>
                    <div
                      id="more-than-3.0"
                      className={getClassNamesCarat("more-than-3.0")}
                      onClick={() => onClickSelectedCarat("more-than-3.0")}
                    >
                      More than 3.0
                    </div>
                  </div>
                </div>
              </div>

              <div className="option-section">
                <div className="tablegemstone">
                  <h2>Gemstone Information</h2>
                  <table>
                    <thead>
                      <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Size</th>
                        <th>Color</th>
                        <th>Clarity</th>
                        <th>Price</th>
                      </tr>
                    </thead>
                    <tbody>
                      {gemstones.map((gemstone) => (
                        <tr key={gemstone.gemstoneid}>
                          <td>{gemstone.gemstoneid}</td>
                          <td>{gemstone.name}</td>
                          <td>{gemstone.size}</td>
                          <td>{gemstone.color}</td>
                          <td>{gemstone.clarity}</td>
                          <td>{gemstone.price}</td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <button className="create-button">Create your model</button>
        </form>

        <div className="divider"></div>
        <div className="model-gallery">
          <div className="model-preview"></div>
          <div className="model-preview"></div>
          <div className="model-preview"></div>
          <div className="model-preview"></div>
        </div>
        <button className="view-more-button">View More</button>
      </main>
    </div>
  );
}

export default CustomizeForm;