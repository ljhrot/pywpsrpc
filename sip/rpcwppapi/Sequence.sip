/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct Sequence : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Item(
            int Index,
            Effect **Item /Out/) = 0;

        virtual HRESULT AddEffect(
            Shape *Shape,
            MsoAnimEffect effectId,
            MsoAnimateByLevel Level,
            MsoAnimTriggerType trigger,
            int Index,
            Effect **Effect /Out/) = 0;

        virtual HRESULT Clone(
            Effect *effect,
            int Index,
            Effect **Clone /Out/) = 0;

        virtual HRESULT FindFirstAnimationFor(
            Shape *Shape,
            Effect **FindFirstAnimationFor /Out/) = 0;

        virtual HRESULT FindFirstAnimationForClick(
            int click,
            Effect **FindFirstAnimationForClick /Out/) = 0;

        virtual HRESULT ConvertToBuildLevel(
            Effect *effect,
            MsoAnimateByLevel Level,
            Effect **ConvertToBuildLevel /Out/) = 0;

        virtual HRESULT ConvertToAfterEffect(
            Effect *effect,
            MsoAnimAfterEffect After,
            MsoRGBType DimColor,
            PpColorSchemeIndex DimSchemeColor,
            Effect **ConvertToAfterEffect /Out/) = 0;

        virtual HRESULT ConvertToAnimateBackground(
            Effect *effect,
            MsoTriState AnimateBackground,
            Effect **ConvertToAnimateBackground /Out/) = 0;

        virtual HRESULT ConvertToAnimateInReverse(
            Effect *effect,
            MsoTriState animateInReverse,
            Effect **ConvertToAnimateInReverse /Out/) = 0;

        virtual HRESULT ConvertToTextUnitEffect(
            Effect *effect,
            MsoAnimTextUnitEffect unitEffect,
            Effect **ConvertToTextUnitEffect /Out/) = 0;

        virtual HRESULT AddTriggerEffect(
            Shape *pShape,
            MsoAnimEffect effectId,
            MsoAnimTriggerType trigger,
            Shape *pTriggerShape,
            BSTR bookmark,
            MsoAnimateByLevel Level,
            Effect **TriggerEffect /Out/) = 0;

    };
};