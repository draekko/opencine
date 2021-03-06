// Copyright (c) 2017 apertus° Association & contributors
// Project: OpenCine / ProcessingTest
// License: GNU GPL Version 3 (https://www.gnu.org/licenses/gpl-3.0.en.html)

#ifndef RAWDUMP_H
#define RAWDUMP_H

#include <string>

namespace OC
{
    namespace Image
    {
        class OCImage;

        class RawDump
        {
            static uint8_t GetBitShift(OCImage& image);

        public:
            static bool DumpRAW(std::string fileName, uint8_t* data, long length);
            static bool DumpPNG(std::string fileName, OC::Image::OCImage& image);
        };
    }
}

#endif // RAWDUMP_H
