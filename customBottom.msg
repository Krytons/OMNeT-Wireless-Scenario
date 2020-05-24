import inet.common.INETDefs;
import inet.networklayer.common.L3Address;
import inet.common.packet.chunk.Chunk;

namespace inet;

class customBottom extends FieldsChunk{
    chunkLength = B(6); //Lunghezza totale
    B lengthField = B(2); //Lunghezza campo singolo
	L3Address src; //Source
	L3Address dst; //Destination
	int seq = 0; //Sequence number
}