/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IFullSeriesCollection : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Series **RHS /Out/) = 0;

        virtual HRESULT _NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT _Default(
            VARIANT Index,
            Series **RHS /Out/) = 0;

    };
};