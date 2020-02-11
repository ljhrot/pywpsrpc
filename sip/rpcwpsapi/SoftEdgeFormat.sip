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
    struct SoftEdgeFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Type(
            MsoSoftEdgeType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            MsoSoftEdgeType prop) = 0;

        virtual HRESULT get_Radius(
            single *prop /Out/) = 0;

        virtual HRESULT put_Radius(
            single prop) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;
    };
};