/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct OMathFrac : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Num(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Den(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdOMathFracType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            WdOMathFracType prop) = 0;

    };
};