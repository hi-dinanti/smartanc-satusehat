import { buildFormatBaseResource, MappingFormat } from "./utils";

export function buildFormatSpecimen(rawData: MappingFormat, result: Record<string | number, MappingFormat>) {
    result = buildFormatBaseResource(rawData, result);

    return result;
}