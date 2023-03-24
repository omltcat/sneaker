import MarianasAirBases from "../../data/airbases-cn/marianaislands.json";
import { convertRawAirBaseData, DCSMap } from "./DCSMap";

export const Marianas: DCSMap = {
  name: "Marianas",
  center: [16.21, 145.40],
  magDec: 0,
  airports: convertRawAirBaseData(MarianasAirBases),
};
