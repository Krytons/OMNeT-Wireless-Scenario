import inet.common.INETDefs;
import inet.common.packet.chunk.Chunk;

namespace inet;

class customBottom extends FieldsChunk{
    chunkLength = B(6); //Lunghezza totale
    B lengthField = B(2); //Lunghezza campo singolo
	string src; //Source
	string dst; //Destination
	int seq = 0; //Sequence number
}