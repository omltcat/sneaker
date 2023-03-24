import NevadaAirBases from "../../data/airbases-cn/nevada.json";
import { convertRawAirBaseData, DCSMap } from "./DCSMap";

export const Nevada: DCSMap = {
  name: "Nevada",
  center: [37.5, -115.15],
  magDec: 11,
  airports: convertRawAirBaseData(NevadaAirBases),
};
