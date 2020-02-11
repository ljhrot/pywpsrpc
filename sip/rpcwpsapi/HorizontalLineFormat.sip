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
    struct HorizontalLineFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_PercentWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_PercentWidth(
            single prop) = 0;

        virtual HRESULT get_NoShade(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NoShade(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Alignment(
            WdHorizontalLineAlignment *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            WdHorizontalLineAlignment prop) = 0;

        virtual HRESULT get_WidthType(
            WdHorizontalLineWidthType *prop /Out/) = 0;

        virtual HRESULT put_WidthType(
            WdHorizontalLineWidthType prop) = 0;
    };
};