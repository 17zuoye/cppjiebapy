/* Please refer to the official SWIG documentation */

%module mixsegment
%include "mixsegment.h"
%include "typemaps.i"
%include "std_vector.i"
%include "std_string.i"

%{
#include "mixsegment.h"
%}

namespace std {
    %template(StringVector) vector<string>;
}

%inline %{
extern int mix_segment_init(char* jieba_dic, char* hmm_model);
extern bool mix_segment_cut(const std::string& str, StringVector& res);
extern bool mix_segment_cut_type(const std::string& str, StringVector& res);
extern void mix_segment_dispose();
%}
