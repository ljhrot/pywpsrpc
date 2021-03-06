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
    struct IApplicationEvents3 : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Startup() = 0;

        virtual HRESULT Quit() = 0;

        virtual HRESULT DocumentChange() = 0;

        virtual HRESULT DocumentOpen(
            Document *Doc) = 0;

        virtual HRESULT DocumentBeforeClose(
            Document *Doc,
            VARIANT_BOOL *Cancel) = 0;

        virtual HRESULT DocumentBeforePrint(
            Document *Doc,
            VARIANT_BOOL *Cancel) = 0;

        virtual HRESULT DocumentBeforeSave(
            Document *Doc,
            VARIANT_BOOL *SaveAsUI,
            VARIANT_BOOL *Cancel) = 0;

        virtual HRESULT NewDocument(
            Document *Doc) = 0;

        virtual HRESULT WindowActivate(
            Document *Doc,
            Window *Wn) = 0;

        virtual HRESULT WindowDeactivate(
            Document *Doc,
            Window *Wn) = 0;

        virtual HRESULT WindowSelectionChange(
            Selection *Sel) = 0;

        virtual HRESULT WindowBeforeRightClick(
            Selection *Sel,
            VARIANT_BOOL *Cancel) = 0;

        virtual HRESULT WindowBeforeDoubleClick(
            Selection *Sel,
            VARIANT_BOOL *Cancel) = 0;

        virtual HRESULT EPostagePropertyDialog(
            Document *Doc) = 0;

        virtual HRESULT EPostageInsert(
            Document *Doc) = 0;

        virtual HRESULT MailMergeAfterMerge(
            Document *Doc,
            Document *DocResult) = 0;

        virtual HRESULT MailMergeAfterRecordMerge(
            Document *Doc) = 0;

        virtual HRESULT MailMergeBeforeMerge(
            Document *Doc,
            long StartRecord,
            long EndRecord,
            VARIANT_BOOL *Cancel) = 0;

        virtual HRESULT MailMergeBeforeRecordMerge(
            Document *Doc,
            VARIANT_BOOL *Cancel) = 0;

        virtual HRESULT MailMergeDataSourceLoad(
            Document *Doc) = 0;

        virtual HRESULT MailMergeDataSourceValidate(
            Document *Doc,
            VARIANT_BOOL *Handled) = 0;

        virtual HRESULT MailMergeWizardSendToCustom(
            Document *Doc) = 0;

        virtual HRESULT MailMergeWizardStateChange(
            Document *Doc,
            int *FromState,
            int *ToState,
            VARIANT_BOOL *Handled) = 0;

        virtual HRESULT WindowSize(
            Document *Doc,
            Window *Wn) = 0;

    };
};
