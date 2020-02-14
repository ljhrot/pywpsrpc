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
    struct SmartTagRecognizer : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_FullName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ProgID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *prop /Out/) = 0;

    };
};