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
    struct ODSOFilters : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Count(
            long *plCount /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Parent(
            IDispatch **ppParentOdso /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            IDispatch **ppColumn /Out/) = 0;

        IDispatch* __getitem__(long index) const;
        %MethodCode
            IDispatch *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            BSTR Column,
            MsoFilterComparison Comparison,
            MsoFilterConjunction Conjunction,
            BSTR bstrCompareTo = 0,
            VARIANT_BOOL DeferUpdate = VARIANT_FALSE) = 0;

        virtual HRESULT Delete(
            long Index,
            VARIANT_BOOL DeferUpdate = VARIANT_FALSE) = 0;

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

        IDispatch* getParent();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Parent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Parent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Parent, get=getParent)
    };
};
