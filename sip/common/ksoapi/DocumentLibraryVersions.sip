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
    struct DocumentLibraryVersions : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            long lIndex,
            DocumentLibraryVersion **ppidisp /Out/) = 0;

        virtual HRESULT get_Count(
            long *lCount /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_IsVersioningEnabled(
            VARIANT_BOOL *pvarfVersioningOn /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppienum /Out/) = 0;

    };
};