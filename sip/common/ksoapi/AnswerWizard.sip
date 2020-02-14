/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct AnswerWizard : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Files(
            AnswerWizardFiles **Files /Out/) = 0;

        virtual HRESULT ClearFileList() = 0;

        virtual HRESULT ResetFileList() = 0;

    };
};