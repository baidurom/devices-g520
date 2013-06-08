.class public final Landroid/webkit/WebViewClassic;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkit/WebViewProvider;
.implements Landroid/webkit/WebViewProvider$ScrollDelegate;
.implements Landroid/webkit/WebViewProvider$ViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewClassic$InvokeListBox;,
        Landroid/webkit/WebViewClassic$PageSwapDelegate;,
        Landroid/webkit/WebViewClassic$FocusTransitionDrawable;,
        Landroid/webkit/WebViewClassic$PrivateHandler;,
        Landroid/webkit/WebViewClassic$RequestFormData;,
        Landroid/webkit/WebViewClassic$SelectionHandleAlpha;,
        Landroid/webkit/WebViewClassic$ViewSizeData;,
        Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;,
        Landroid/webkit/WebViewClassic$DestroyNativeRunnable;,
        Landroid/webkit/WebViewClassic$TitleBarDelegate;,
        Landroid/webkit/WebViewClassic$PackageListener;,
        Landroid/webkit/WebViewClassic$ProxyReceiver;,
        Landroid/webkit/WebViewClassic$TrustStorageListener;,
        Landroid/webkit/WebViewClassic$Factory;,
        Landroid/webkit/WebViewClassic$FocusNodeHref;,
        Landroid/webkit/WebViewClassic$OnTrimMemoryListener;,
        Landroid/webkit/WebViewClassic$PastePopupWindow;,
        Landroid/webkit/WebViewClassic$WebViewInputConnection;
    }
.end annotation


# static fields
.field private static final ANGLE_HORIZ:F = 0.0f

.field private static final ANGLE_VERT:F = 2.0f

.field static final AUTOFILL_COMPLETE:I = 0x86

.field static final AUTOFILL_FORM:I = 0x94

.field private static final AUTO_REDRAW_HACK:Z = false

.field private static final CARET_HANDLE_STAMINA_MS:J = 0xbb8L

.field static final CENTER_FIT_RECT:I = 0x7f

.field static final CLEAR_CARET_HANDLE:I = 0x90

.field static final CLEAR_TEXT_ENTRY:I = 0x6f

.field static final COPY_TO_CLIPBOARD:I = 0x8d

.field private static final DEBUG_TOUCH_HIGHLIGHT:Z = true

.field static final DEFAULT_VIEWPORT_WIDTH:I = 0x3d4

.field private static final DRAG_HELD_MOTIONLESS:I = 0x8

.field private static final DRAG_LAYER_FINGER_DISTANCE:I = 0x4e20

.field private static final DRAW_EXTRAS_CURSOR_RING:I = 0x2

.field private static final DRAW_EXTRAS_NONE:I = 0x0

.field private static final DRAW_EXTRAS_SELECTION:I = 0x1

.field private static final EDIT_RECT_BUFFER:I = 0xa

.field static final EDIT_TEXT_SIZE_CHANGED:I = 0x96

.field static final ENTER_FULLSCREEN_VIDEO:I = 0x89

.field static final EXIT_FULLSCREEN_VIDEO:I = 0x8c

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x65

.field private static final FIRST_PRIVATE_MSG_ID:I = 0x1

.field static final FOCUS_NODE_CHANGED:I = 0x93

.field static final HANDLE_ID_LEFT:I = 0x0

.field static final HANDLE_ID_RIGHT:I = 0x1

.field static final HIDE_FULLSCREEN:I = 0x79

.field static final HIGHLIGHT_COLOR:I = 0x6633b5e5

.field static final HIT_TEST_RESULT:I = 0x83

.field private static final HSLOPE_TO_BREAK_SNAP:F = 0.4f

.field private static final HSLOPE_TO_START_SNAP:F = 0.25f

.field static final HandlerPackageDebugString:[Ljava/lang/String; = null

.field static final HandlerPrivateDebugString:[Ljava/lang/String; = null

.field static final INIT_EDIT_FIELD:I = 0x8e

.field static final INVAL_RECT_MSG_ID:I = 0x75

.field static final KEY_PRESS:I = 0x91

.field private static final LAST_PACKAGE_MSG_ID:I = 0x83

.field private static final LAST_PRIVATE_MSG_ID:I = 0xb

.field static final LOGTAG:Ljava/lang/String; = "webview"

.field static final LONG_PRESS_CENTER:I = 0x72

.field private static final LONG_PRESS_TIMEOUT:I = 0x3e8

.field private static final MAX_DURATION:I = 0x2ee

.field private static final MINIMUM_VELOCITY_RATIO_FOR_ACCELERATION:F = 0.2f

.field private static final MIN_FLING_TIME:I = 0xfa

.field private static final MMA_WEIGHT_N:F = 5.0f

.field private static final MOTIONLESS_FALSE:I = 0x0

.field private static final MOTIONLESS_IGNORE:I = 0x3

.field private static final MOTIONLESS_PENDING:I = 0x1

.field private static final MOTIONLESS_TIME:I = 0x64

.field private static final MOTIONLESS_TRUE:I = 0x2

.field private static final NEVER_REMEMBER_PASSWORD:I = 0x2

.field static final NEW_PICTURE_MSG_ID:I = 0x69

.field static final NO_LEFTEDGE:I = -0x1

.field private static final PAGE_SCROLL_OVERLAP:I = 0x18

.field private static final PREVENT_DEFAULT_TIMEOUT:I = 0xa

.field static final PREVENT_TOUCH_ID:I = 0x73

.field private static final RELEASE_SINGLE_TAP:I = 0x5

.field static final RELOCATE_AUTO_COMPLETE_POPUP:I = 0x92

.field private static final REMEMBER_PASSWORD:I = 0x1

.field static final REPLACE_TEXT:I = 0x8f

.field private static final REQUEST_FORM_DATA:I = 0x6

.field static final REQUEST_KEYBOARD:I = 0x76

.field static final SAVE_WEBARCHIVE_FINISHED:I = 0x84

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field static final SCREEN_ON:I = 0x88

.field private static final SCROLLBAR_ALWAYSOFF:I = 0x1

.field private static final SCROLLBAR_ALWAYSON:I = 0x2

.field private static final SCROLLBAR_AUTO:I = 0x0

.field private static final SCROLL_BITS:I = 0x6

.field static final SCROLL_EDIT_TEXT:I = 0x95

.field private static final SCROLL_SELECT_TEXT:I = 0xb

.field static final SCROLL_TO_MSG_ID:I = 0x65

.field static final SELECTION_STRING_CHANGED:I = 0x82

.field private static final SELECT_CURSOR_OFFSET:I = 0x10

.field private static final SELECT_SCROLL:I = 0x5

.field private static final SELECT_SCROLL_INTERVAL:J = 0x10L

.field static final SET_AUTOFILLABLE:I = 0x85

.field static final SET_SCROLLBAR_MODES:I = 0x81

.field static final SHOW_CARET_HANDLE:I = 0x97

.field static final SHOW_FULLSCREEN:I = 0x78

.field static final SHOW_RECT_MSG_ID:I = 0x71

.field private static final SNAP_LOCK:I = 0x1

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_X:I = 0x2

.field private static final SNAP_Y:I = 0x4

.field private static final STD_SPEED:I = 0x1e0

.field private static final SWITCH_TO_LONGPRESS:I = 0x4

.field private static final SWITCH_TO_SHORTPRESS:I = 0x3

.field static final TAKE_FOCUS:I = 0x6e

.field private static final TAP_TIMEOUT:I = 0x12c

.field private static final TEXT_SCROLL_FIRST_SCROLL_MS:J = 0x10L

.field private static final TEXT_SCROLL_RATE:F = 0.01f

.field static final THEME_CURSOR_RING_COLOR_NAME:Ljava/lang/String; = "browser_cursor_ring"

.field static final THEME_TEXT_SELECTION_COLOR_NAME:Ljava/lang/String; = "browser_text_selection"

.field private static final TOUCH_DONE_MODE:I = 0x7

.field private static final TOUCH_DOUBLE_TAP_MODE:I = 0x6

.field private static final TOUCH_DRAG_LAYER_MODE:I = 0x9

.field private static final TOUCH_DRAG_MODE:I = 0x3

.field private static final TOUCH_DRAG_START_MODE:I = 0x2

.field private static final TOUCH_DRAG_TEXT_MODE:I = 0xa

.field private static final TOUCH_HIGHLIGHT_ELAPSE_TIME:I = 0x7d0

.field private static final TOUCH_INIT_MODE:I = 0x1

.field private static final TOUCH_PINCH_DRAG:I = 0x8

.field private static final TOUCH_SENT_INTERVAL:I = 0x0

.field private static final TOUCH_SHORTPRESS_MODE:I = 0x5

.field private static final TOUCH_SHORTPRESS_START_MODE:I = 0x4

.field private static final TRACKBALL_KEY_TIMEOUT:I = 0x3e8

.field private static final TRACKBALL_MOVE_COUNT:I = 0xa

.field private static final TRACKBALL_MULTIPLIER:I = 0x3

.field private static final TRACKBALL_SCALE:I = 0x190

.field private static final TRACKBALL_SCROLL_COUNT:I = 0x5

.field private static final TRACKBALL_TIMEOUT:I = 0xc8

.field private static final TRACKBALL_WAIT:I = 0x64

.field static final UPDATE_CONTENT_BOUNDS:I = 0x98

.field static final UPDATE_MATCH_COUNT:I = 0x7e

.field static final UPDATE_TEXTFIELD_TEXT_MSG_ID:I = 0x6c

.field static final UPDATE_TEXT_SELECTION_MSG_ID:I = 0x70

.field static final UPDATE_ZOOM_DENSITY:I = 0x8b

.field static final UPDATE_ZOOM_RANGE:I = 0x6d

.field private static final VSLOPE_TO_BREAK_SNAP:F = 0.95f

.field private static final VSLOPE_TO_START_SNAP:F = 1.25f

.field static final WEBCORE_INITIALIZED_MSG_ID:I = 0x6b

.field static final WEBCORE_NEED_TOUCH_EVENTS:I = 0x74

.field static final XLOGTAG:Ljava/lang/String; = "webkit/webview"

.field private static final ZOOM_BITS:I = 0x86

.field static mLogEvent:Z

.field private static mOverScrollBackground:Landroid/graphics/Paint;

.field private static mOverScrollBorder:Landroid/graphics/Paint;

.field private static sGoogleApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sMaxViewportWidth:I

.field private static sNotificationsEnabled:Z

.field private static sPackageInstallationReceiverAdded:Z

.field private static sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

.field private static sTrustStorageListener:Landroid/webkit/WebViewClassic$TrustStorageListener;


# instance fields
.field private DRAG_LAYER_INVERSE_DENSITY_SQUARED:F

.field private mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

.field private mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

.field private mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

.field private mAutoRedraw:Z

.field private mAutoScrollX:I

.field private mAutoScrollY:I

.field private mAverageAngle:F

.field mAverageSwapFps:D

.field private mBackgroundColor:I

.field mBatchedTextChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockWebkitViewMessages:Z

.field private mCachedOverlappingActionModeHeight:I

.field private mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCertificate:Landroid/net/http/SslCertificate;

.field private mConfirmMove:Z

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentScrollingLayerId:I

.field private mCurrentTouchInterval:I

.field private mDatabase:Landroid/webkit/WebViewDatabaseClassic;

.field private mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

.field private mDoubleTapSlopSquare:I

.field private mDrawCursorRing:Z

.field private mDrawHistory:Z

.field mEditTextContent:Landroid/graphics/Rect;

.field mEditTextContentBounds:Landroid/graphics/Rect;

.field mEditTextLayerId:I

.field mEditTextScroller:Landroid/widget/Scroller;

.field private mEmailUsingFlag:Z

.field private mFieldPointer:I

.field private mFindCallback:Landroid/webkit/FindActionModeCallback;

.field private mFindIsUp:Z

.field private mFindListener:Landroid/webkit/WebView$FindListener;

.field private mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

.field private mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

.field private mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

.field mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mGotCenterDown:Z

.field private mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

.field private mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mHardwareAccelSkia:Z

.field private mHeight:I

.field mHeightCanMeasure:Z

.field private mHeldMotionless:I

.field private mHistoryHeight:I

.field private mHistoryPicture:Landroid/graphics/Picture;

.field private mHistoryWidth:I

.field private mHorizontalScrollBarMode:I

.field private mInOverScrollMode:Z

.field private mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

.field private mInitialScaleInPercent:I

.field mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

.field private mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

.field private mInvScale:F

.field private final mInvScreenRect:Landroid/graphics/Rect;

.field mIsBatchingTextChanges:Z

.field private mIsBenchmarkApp:Z

.field private mIsBrowserApp:Z

.field private mIsCaretSelection:Z

.field private mIsDebuggable:Z

.field mIsEditingText:Z

.field private mIsOver:Z

.field private mIsPaused:Z

.field private mIsWebViewVisible:Z

.field private mKeysPressed:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLastActualHeightSent:I

.field private mLastCursorBounds:Landroid/graphics/Rect;

.field private mLastCursorTime:J

.field private mLastEditScroll:J

.field private mLastGlobalRect:Landroid/graphics/Rect;

.field mLastHeightSent:I

.field private mLastSentTouchTime:J

.field mLastSwapTime:J

.field private mLastTouchTime:J

.field private mLastTouchUpTime:J

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLastVelX:F

.field private mLastVelY:F

.field private mLastVelocity:F

.field private mLastVisibleRectSent:Landroid/graphics/Rect;

.field mLastWidthSent:I

.field private mListBoxDialog:Landroid/app/AlertDialog;

.field private mListBoxMessage:Landroid/os/Message;

.field private mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

.field private mMapTrackballToArrowKeys:Z

.field private mMaxAutoScrollX:I

.field private mMaxAutoScrollY:I

.field private mMaximumFling:I

.field private mMinAutoScrollX:I

.field private mMinAutoScrollY:I

.field private mNativeClass:I

.field private mNavSlop:I

.field private mOrientation:I

.field mOrientationChange:Z

.field private mOverScrollGlow:Landroid/webkit/OverScrollGlow;

.field private mOverflingDistance:I

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mOverscrollDistance:I

.field private mPageVisibile:Z

.field private mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

.field private mPictureListener:Landroid/webkit/WebView$PictureListener;

.field private mPictureUpdatePausedForFocusChange:Z

.field final mPrivateHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeMsg:Landroid/os/Message;

.field private mScale:F

.field private final mScreenRect:Landroid/graphics/Rect;

.field private final mScrollFilter:Landroid/graphics/DrawFilter;

.field private mScrollOffset:Landroid/graphics/Point;

.field mScroller:Landroid/widget/OverScroller;

.field private mScrollingLayerBounds:Landroid/graphics/Rect;

.field private mScrollingLayerRect:Landroid/graphics/Rect;

.field private mSelectCallback:Landroid/webkit/SelectActionModeCallback;

.field private mSelectCursorLeft:Landroid/graphics/Point;

.field private mSelectCursorLeftLayerId:I

.field private mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

.field private mSelectCursorRight:Landroid/graphics/Point;

.field private mSelectCursorRightLayerId:I

.field private mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

.field private mSelectDraggingCursor:Landroid/graphics/Point;

.field private mSelectDraggingOffset:Landroid/graphics/Point;

.field private mSelectDraggingTextQuad:Landroid/webkit/QuadF;

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleCenterOffset:Landroid/graphics/Point;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeftOffset:Landroid/graphics/Point;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRightOffset:Landroid/graphics/Point;

.field private mSelectX:I

.field private mSelectY:I

.field private mSelectingText:Z

.field private mSelectionStarted:Z

.field private mSendScrollEvent:Z

.field private mSentAutoScrollMessage:Z

.field private mShowTapHighlight:Z

.field private mShowTextSelectionExtra:Z

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field private mStartTouchX:I

.field private mStartTouchY:I

.field private final mTempContentVisibleRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;

.field private final mTempVisibleRectOffset:Landroid/graphics/Point;

.field private mTextGeneration:I

.field private mTopY:I

.field private mTouchCrossHairColor:Landroid/graphics/Paint;

.field private mTouchHighlightRegion:Landroid/graphics/Region;

.field private mTouchHighlightX:I

.field private mTouchHighlightY:I

.field private mTouchHightlightPaint:Landroid/graphics/Paint;

.field private mTouchInEditText:Z

.field private mTouchMode:I

.field private mTouchSlopSquare:I

.field private mTrackballDown:Z

.field private mTrackballFirstTime:J

.field private mTrackballLastTime:J

.field private mTrackballRemainsX:F

.field private mTrackballRemainsY:F

.field private mTrackballUpTime:J

.field private mTrackballXMove:I

.field private mTrackballYMove:I

.field private mUserPresent:Z

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollBarMode:I

.field mViewManager:Landroid/webkit/ViewManager;

.field private final mVisibleContentRect:Landroid/graphics/RectF;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private final mWebView:Landroid/webkit/WebView;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field private final mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

.field private mWidth:I

.field mWidthCanMeasure:Z

.field private mWrapContent:Z

.field private final mZoomFilter:Landroid/graphics/DrawFilter;

.field private mZoomManager:Landroid/webkit/ZoomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1119
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REMEMBER_PASSWORD"

    aput-object v1, v0, v4

    const-string v1, "NEVER_REMEMBER_PASSWORD"

    aput-object v1, v0, v3

    const-string v1, "SWITCH_TO_SHORTPRESS"

    aput-object v1, v0, v5

    const-string v1, "SWITCH_TO_LONGPRESS"

    aput-object v1, v0, v6

    const-string v1, "RELEASE_SINGLE_TAP"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "REQUEST_FORM_DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RESUME_WEBCORE_PRIORITY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DRAG_HELD_MOTIONLESS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PREVENT_DEFAULT_TIMEOUT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SCROLL_SELECT_TEXT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebViewClassic;->HandlerPrivateDebugString:[Ljava/lang/String;

    .line 1133
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SCROLL_TO_MSG_ID"

    aput-object v1, v0, v4

    const-string v1, "102"

    aput-object v1, v0, v3

    const-string v1, "103"

    aput-object v1, v0, v5

    const-string v1, "104"

    aput-object v1, v0, v6

    const-string v1, "NEW_PICTURE_MSG_ID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UPDATE_TEXT_ENTRY_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WEBCORE_INITIALIZED_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UPDATE_TEXTFIELD_TEXT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "UPDATE_ZOOM_RANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "UNHANDLED_NAV_KEY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CLEAR_TEXT_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "UPDATE_TEXT_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SHOW_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LONG_PRESS_CENTER"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PREVENT_TOUCH_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WEBCORE_NEED_TOUCH_EVENTS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "INVAL_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "REQUEST_KEYBOARD"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DO_MOTION_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SHOW_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HIDE_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DOM_FOCUS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "REPLACE_BASE_CONTENT"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "RETURN_LABEL"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "UPDATE_MATCH_COUNT"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "CENTER_FIT_RECT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SET_SCROLLBAR_MODES"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SELECTION_STRING_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SET_TOUCH_HIGHLIGHT_RECTS"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SAVE_WEBARCHIVE_FINISHED"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SET_AUTOFILLABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "AUTOFILL_COMPLETE"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "SELECT_AT"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "SCREEN_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ENTER_FULLSCREEN_VIDEO"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "UPDATE_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "UPDATE_ZOOM_DENSITY"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebViewClassic;->HandlerPackageDebugString:[Ljava/lang/String;

    .line 1182
    const/16 v0, 0x3d4

    sput v0, Landroid/webkit/WebViewClassic;->sMaxViewportWidth:I

    .line 1228
    sput-boolean v3, Landroid/webkit/WebViewClassic;->mLogEvent:Z

    .line 1235
    sput-boolean v3, Landroid/webkit/WebViewClassic;->sNotificationsEnabled:Z

    .line 1627
    sput-boolean v4, Landroid/webkit/WebViewClassic;->sPackageInstallationReceiverAdded:Z

    .line 1636
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/webkit/WebViewClassic;->sGoogleApps:Ljava/util/Set;

    .line 1637
    sget-object v0, Landroid/webkit/WebViewClassic;->sGoogleApps:Ljava/util/Set;

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1638
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)V
    .locals 9
    .parameter "webView"
    .parameter "privateAccess"

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    .line 741
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    .line 742
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    .line 743
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    .line 744
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    .line 745
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    .line 749
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    .line 750
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    .line 752
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    .line 754
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    .line 755
    iput-wide v6, p0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    .line 758
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsOver:Z

    .line 759
    iput v3, p0, Landroid/webkit/WebViewClassic;->mTopY:I

    .line 761
    const/16 v0, 0x140

    iput v0, p0, Landroid/webkit/WebViewClassic;->mWidth:I

    .line 762
    const/16 v0, 0xf0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHeight:I

    .line 820
    new-instance v0, Landroid/webkit/WebViewClassic$PrivateHandler;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$PrivateHandler;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    .line 871
    iput v3, p0, Landroid/webkit/WebViewClassic;->mCurrentTouchInterval:I

    .line 884
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    .line 895
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 912
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 967
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/WebViewClassic;->mScale:F

    .line 968
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/WebViewClassic;->mInvScale:F

    .line 969
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mEmailUsingFlag:Z

    .line 974
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    .line 975
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    .line 988
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    .line 1013
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    .line 1015
    new-instance v0, Landroid/webkit/QuadF;

    invoke-direct {v0}, Landroid/webkit/QuadF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    .line 1016
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    .line 1018
    new-instance v0, Landroid/webkit/QuadF;

    invoke-direct {v0}, Landroid/webkit/QuadF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    .line 1021
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    .line 1030
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    .line 1032
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    .line 1046
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    .line 1049
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mHardwareAccelSkia:Z

    .line 1185
    iput v3, p0, Landroid/webkit/WebViewClassic;->mInitialScaleInPercent:I

    .line 1189
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSendScrollEvent:Z

    .line 1191
    iput v3, p0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 1208
    iput v3, p0, Landroid/webkit/WebViewClassic;->mHorizontalScrollBarMode:I

    .line 1209
    iput v3, p0, Landroid/webkit/WebViewClassic;->mVerticalScrollBarMode:I

    .line 1231
    iput-wide v6, p0, Landroid/webkit/WebViewClassic;->mLastTouchUpTime:J

    .line 1250
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    .line 1253
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsBrowserApp:Z

    .line 1256
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsBenchmarkApp:Z

    .line 1259
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsDebuggable:Z

    .line 1262
    iput v3, p0, Landroid/webkit/WebViewClassic;->mAutoScrollX:I

    .line 1263
    iput v3, p0, Landroid/webkit/WebViewClassic;->mAutoScrollY:I

    .line 1264
    iput v3, p0, Landroid/webkit/WebViewClassic;->mMinAutoScrollX:I

    .line 1265
    iput v3, p0, Landroid/webkit/WebViewClassic;->mMaxAutoScrollX:I

    .line 1266
    iput v3, p0, Landroid/webkit/WebViewClassic;->mMinAutoScrollY:I

    .line 1267
    iput v3, p0, Landroid/webkit/WebViewClassic;->mMaxAutoScrollY:I

    .line 1268
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerBounds:Landroid/graphics/Rect;

    .line 1269
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z

    .line 1275
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    .line 2052
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 3212
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 3213
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mLastGlobalRect:Landroid/graphics/Rect;

    .line 3214
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    .line 3215
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 3216
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    .line 3250
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    .line 3270
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTempContentVisibleRect:Landroid/graphics/Rect;

    .line 3663
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mUserPresent:Z

    .line 3664
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mPageVisibile:Z

    .line 3665
    new-instance v0, Landroid/webkit/WebViewClassic$9;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$9;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3918
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    .line 4722
    iput v3, p0, Landroid/webkit/WebViewClassic;->mOrientation:I

    .line 4725
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mOrientationChange:Z

    .line 4822
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v1, 0x86

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 4825
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollFilter:Landroid/graphics/DrawFilter;

    .line 4931
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    .line 4932
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    .line 4933
    iput v3, p0, Landroid/webkit/WebViewClassic;->mHistoryWidth:I

    .line 4934
    iput v3, p0, Landroid/webkit/WebViewClassic;->mHistoryHeight:I

    .line 5174
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mGotCenterDown:Z

    .line 5832
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    .line 5833
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 6792
    iput-wide v6, p0, Landroid/webkit/WebViewClassic;->mTrackballFirstTime:J

    .line 6793
    iput-wide v6, p0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    .line 6794
    iput v8, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    .line 6795
    iput v8, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    .line 6796
    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    .line 6797
    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    .line 6798
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    .line 6799
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    .line 6800
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 6810
    iput v3, p0, Landroid/webkit/WebViewClassic;->mSelectX:I

    .line 6811
    iput v3, p0, Landroid/webkit/WebViewClassic;->mSelectY:I

    .line 6812
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    .line 6813
    iput-wide v6, p0, Landroid/webkit/WebViewClassic;->mTrackballUpTime:J

    .line 6814
    iput-wide v6, p0, Landroid/webkit/WebViewClassic;->mLastCursorTime:J

    .line 6816
    new-instance v0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-direct {v0, p0, v5}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    .line 6817
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    const-string v1, "alpha"

    new-array v2, v4, [I

    aput v3, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 6823
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mMapTrackballToArrowKeys:Z

    .line 8094
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    .line 1296
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    .line 1297
    iput-object p2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    .line 1298
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    .line 1299
    return-void
.end method

.method private abortAnimation()V
    .locals 1

    .prologue
    .line 3175
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 3176
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    .line 3177
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    return v0
.end method

.method static synthetic access$1000()V
    .locals 0

    .prologue
    .line 155
    invoke-static {}, Landroid/webkit/WebViewClassic;->handleCertTrustChanged()V

    return-void
.end method

.method static synthetic access$102(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    return p1
.end method

.method static synthetic access$1200(Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-static {p0}, Landroid/webkit/WebViewClassic;->handleProxyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/util/Set;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Landroid/webkit/WebViewClassic;->sGoogleApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/webkit/WebViewClassic;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/webkit/WebViewClassic;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$1800(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-static {p0}, Landroid/webkit/WebViewClassic;->nativeDestroy(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkit/WebViewClassic;Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->beginTextBatch()V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object p1
.end method

.method static synthetic access$2100(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mPageVisibile:Z

    return v0
.end method

.method static synthetic access$2200(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mUserPresent:Z

    return v0
.end method

.method static synthetic access$2202(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$2300(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$AutoFillData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewDatabaseClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    return v0
.end method

.method static synthetic access$2900(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Landroid/webkit/WebViewClassic;->mAutoScrollX:I

    return v0
.end method

.method static synthetic access$300(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->commitTextBatch()V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Landroid/webkit/WebViewClassic;->mAutoScrollY:I

    return v0
.end method

.method static synthetic access$3102(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z

    return p1
.end method

.method static synthetic access$3200(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    return v0
.end method

.method static synthetic access$3300(Landroid/webkit/WebViewClassic;IIZI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/webkit/WebViewClassic;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->scrollLayerTo(II)V

    return-void
.end method

.method static synthetic access$3600(Landroid/webkit/WebViewClassic;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/webkit/WebViewClassic;ILjava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->nativeCreate(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object v0
.end method

.method static synthetic access$3902(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object p1
.end method

.method static synthetic access$400(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$4000(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$4100(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    return v0
.end method

.method static synthetic access$4200(IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-static {p0, p1}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    return-void
.end method

.method static synthetic access$4300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    return-object v0
.end method

.method static synthetic access$4302(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewInputDispatcher;)Landroid/webkit/WebViewInputDispatcher;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    return-object p1
.end method

.method static synthetic access$4400(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    return v0
.end method

.method static synthetic access$4402(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    return p1
.end method

.method static synthetic access$4500(Landroid/webkit/WebViewClassic;IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/webkit/WebViewClassic;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClassic;->viewInvalidate(IIII)V

    return-void
.end method

.method static synthetic access$4702(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mGotCenterDown:Z

    return p1
.end method

.method static synthetic access$4802(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    return p1
.end method

.method static synthetic access$4900(Landroid/webkit/WebViewClassic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->displaySoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    return-object v0
.end method

.method static synthetic access$5002(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    return p1
.end method

.method static synthetic access$5100(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V

    return-void
.end method

.method static synthetic access$5400(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v0

    return v0
.end method

.method static synthetic access$5502(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Landroid/webkit/WebViewClassic;->mHorizontalScrollBarMode:I

    return p1
.end method

.method static synthetic access$5602(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput p1, p0, Landroid/webkit/WebViewClassic;->mVerticalScrollBarMode:I

    return p1
.end method

.method static synthetic access$5700(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Landroid/webkit/WebViewClassic;)Landroid/webkit/AccessibilityInjector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5902(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)Landroid/webkit/WebViewCore$WebKitHitTest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    return-object p1
.end method

.method static synthetic access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->setTouchHighlightRects(Landroid/webkit/WebViewCore$WebKitHitTest;)V

    return-void
.end method

.method static synthetic access$6100(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkit/WebViewClassic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(IILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 155
    invoke-static {p0, p1, p2}, Landroid/webkit/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V

    return-void
.end method

.method static synthetic access$6500(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    return-object v0
.end method

.method static synthetic access$6600(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$FindAllRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    return-object v0
.end method

.method static synthetic access$6700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView$FindListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;

    return-object v0
.end method

.method static synthetic access$6800(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    return v0
.end method

.method static synthetic access$6900(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    return v0
.end method

.method static synthetic access$700(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V

    return-void
.end method

.method static synthetic access$7000(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->setupWebkitSelect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->resetCaretTimer()V

    return-void
.end method

.method static synthetic access$7200(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->showPasteWindow()V

    return-void
.end method

.method static synthetic access$7300(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->scrollEditWithCursor()V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkit/WebViewClassic;Landroid/view/MotionEvent;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->onHandleUiEvent(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method static synthetic access$7500(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z

    return v0
.end method

.method static synthetic access$7502(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z

    return p1
.end method

.method static synthetic access$7600(Landroid/webkit/WebViewClassic;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    return-object v0
.end method

.method static synthetic access$7702(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$FocusTransitionDrawable;)Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    return-object p1
.end method

.method static synthetic access$800(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$8100(Landroid/webkit/WebViewClassic;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$8102(Landroid/webkit/WebViewClassic;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$8202(Landroid/webkit/WebViewClassic;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mListBoxMessage:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$900(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-static {p0}, Landroid/webkit/WebViewClassic;->nativeOnTrimMemory(I)V

    return-void
.end method

.method private adjustSelectionCursors()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 5477
    iget-boolean v12, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v12, :cond_0

    .line 5478
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 5507
    :goto_0
    return-void

    .line 5482
    :cond_0
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget-object v13, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    if-ne v12, v13, :cond_4

    move v9, v10

    .line 5483
    .local v9, wasDraggingLeft:Z
    :goto_1
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v6, v12, Landroid/graphics/Point;->x:I

    .line 5484
    .local v6, oldX:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v7, v12, Landroid/graphics/Point;->y:I

    .line 5485
    .local v7, oldY:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v2, v12, Landroid/graphics/Point;->x:I

    .line 5486
    .local v2, oldLeftX:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v3, v12, Landroid/graphics/Point;->y:I

    .line 5487
    .local v3, oldLeftY:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v4, v12, Landroid/graphics/Point;->x:I

    .line 5488
    .local v4, oldRightX:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v5, v12, Landroid/graphics/Point;->y:I

    .line 5489
    .local v5, oldRightY:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 5491
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    if-ne v4, v12, :cond_1

    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    if-eq v5, v12, :cond_5

    :cond_1
    move v8, v10

    .line 5493
    .local v8, rightChanged:Z
    :goto_2
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    if-ne v2, v12, :cond_2

    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    if-eq v3, v12, :cond_6

    :cond_2
    move v1, v10

    .line 5495
    .local v1, leftChanged:Z
    :goto_3
    if-eqz v1, :cond_3

    if-eqz v8, :cond_3

    .line 5497
    if-nez v9, :cond_7

    move v0, v10

    .line 5498
    .local v0, draggingLeft:Z
    :goto_4
    if-eqz v0, :cond_8

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    :goto_5
    iput-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    .line 5500
    if-eqz v0, :cond_9

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    :goto_6
    iput-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    .line 5506
    .end local v0           #draggingLeft:Z
    :cond_3
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .end local v1           #leftChanged:Z
    .end local v2           #oldLeftX:I
    .end local v3           #oldLeftY:I
    .end local v4           #oldRightX:I
    .end local v5           #oldRightY:I
    .end local v6           #oldX:I
    .end local v7           #oldY:I
    .end local v8           #rightChanged:Z
    .end local v9           #wasDraggingLeft:Z
    :cond_4
    move v9, v11

    .line 5482
    goto :goto_1

    .restart local v2       #oldLeftX:I
    .restart local v3       #oldLeftY:I
    .restart local v4       #oldRightX:I
    .restart local v5       #oldRightY:I
    .restart local v6       #oldX:I
    .restart local v7       #oldY:I
    .restart local v9       #wasDraggingLeft:Z
    :cond_5
    move v8, v11

    .line 5491
    goto :goto_2

    .restart local v8       #rightChanged:Z
    :cond_6
    move v1, v11

    .line 5493
    goto :goto_3

    .restart local v1       #leftChanged:Z
    :cond_7
    move v0, v11

    .line 5497
    goto :goto_4

    .line 5498
    .restart local v0       #draggingLeft:Z
    :cond_8
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    goto :goto_5

    .line 5500
    :cond_9
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    goto :goto_6
.end method

.method private beginScrollEdit()V
    .locals 4

    .prologue
    .line 6534
    iget-wide v0, p0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 6535
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    .line 6537
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->scrollEditWithCursor()V

    .line 6539
    :cond_0
    return-void
.end method

.method private beginTextBatch()V
    .locals 1

    .prologue
    .line 8417
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    .line 8418
    return-void
.end method

.method private calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 3259
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3260
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3265
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3266
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3267
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3268
    return-void
.end method

.method private calcOurContentVisibleRectF(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 3276
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTempContentVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3277
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTempContentVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->viewToContentVisibleRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 3278
    return-void
.end method

.method private calcOurVisibleRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 3253
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 3254
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3255
    return-void
.end method

.method private calculateCaretTop()Landroid/graphics/Point;
    .locals 7

    .prologue
    .line 5452
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v5, v5, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v6, v6, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    invoke-static {v3, v4, v5, v6}, Landroid/webkit/WebViewClassic;->scaleAlongSegment(IILandroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 5454
    .local v0, scale:F
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v3, v3, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v4, v4, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v3, v4}, Landroid/webkit/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 5456
    .local v1, x:I
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v3, v3, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v4, v4, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3, v4}, Landroid/webkit/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 5458
    .local v2, y:I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method private calculateDragAngle(II)F
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 6140
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 6141
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 6142
    int-to-double v0, p2

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private canTextScroll(II)Z
    .locals 8
    .parameter "directionX"
    .parameter "directionY"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7517
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v4

    .line 7518
    .local v4, scrollX:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v5

    .line 7519
    .local v5, scrollY:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v2

    .line 7520
    .local v2, maxScrollX:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v3

    .line 7521
    .local v3, maxScrollY:I
    if-lez p1, :cond_3

    if-ge v4, v2, :cond_2

    move v0, v7

    .line 7524
    .local v0, canScrollX:Z
    :goto_0
    if-lez p2, :cond_6

    if-ge v5, v3, :cond_5

    move v1, v7

    .line 7527
    .local v1, canScrollY:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v6, v7

    :cond_1
    return v6

    .end local v0           #canScrollX:Z
    .end local v1           #canScrollY:Z
    :cond_2
    move v0, v6

    .line 7521
    goto :goto_0

    :cond_3
    if-lez v4, :cond_4

    move v0, v7

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_0

    .restart local v0       #canScrollX:Z
    :cond_5
    move v1, v6

    .line 7524
    goto :goto_1

    :cond_6
    if-lez v5, :cond_7

    move v1, v7

    goto :goto_1

    :cond_7
    move v1, v6

    goto :goto_1
.end method

.method private cancelSelectDialog()V
    .locals 1

    .prologue
    .line 2162
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2163
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 2164
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    .line 2166
    :cond_0
    return-void
.end method

.method private cancelTouch()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 6717
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 6718
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6719
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6722
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_2

    .line 6724
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 6725
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6726
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 6728
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6729
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6730
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6731
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->removeTouchHighlight()V

    .line 6732
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 6733
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 6734
    return-void
.end method

.method private clearActionModes()V
    .locals 1

    .prologue
    .line 2136
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/SelectActionModeCallback;->finish()V

    .line 2139
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    if-eqz v0, :cond_1

    .line 2140
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/FindActionModeCallback;->finish()V

    .line 2142
    :cond_1
    return-void
.end method

.method private clearHelpers()V
    .locals 1

    .prologue
    .line 2150
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V

    .line 2151
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearActionModes()V

    .line 2152
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V

    .line 2153
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->cancelSelectDialog()V

    .line 2155
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v0, :cond_0

    .line 2156
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v0}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 2159
    :cond_0
    return-void
.end method

.method private commitTextBatch()V
    .locals 2

    .prologue
    .line 8421
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 8422
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessages(Ljava/util/ArrayList;)V

    .line 8424
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8425
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    .line 8426
    return-void
.end method

.method private static computeDuration(II)I
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 4144
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4145
    .local v0, distance:I
    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    .line 4146
    .local v1, duration:I
    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeRealHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 3421
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 3422
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHistoryWidth:I

    .line 3425
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private computeRealVerticalScrollRange()I
    .locals 2

    .prologue
    .line 3451
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 3452
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHistoryHeight:I

    .line 3455
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private contentScrollTo(IIZ)V
    .locals 3
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    .line 4265
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v2, :cond_0

    .line 4273
    :goto_0
    return-void

    .line 4270
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v0

    .line 4271
    .local v0, vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v1

    .line 4272
    .local v1, vy:I
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p3, v2}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    goto :goto_0
.end method

.method private contentSizeChanged(Z)V
    .locals 2
    .parameter "updateLayout"

    .prologue
    .line 4283
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 4302
    :cond_0
    :goto_0
    return-void

    .line 4287
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-eqz v0, :cond_3

    .line 4288
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 4290
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 4292
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mWidthCanMeasure:Z

    if-eqz v0, :cond_5

    .line 4293
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_0

    .line 4295
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 4300
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    goto :goto_0
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter "x"

    .prologue
    .line 3127
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 8890
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 8892
    .local v1, cm:Landroid/content/ClipboardManager;
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 8893
    .local v0, clip:Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 8894
    return-void
.end method

.method private destroyJava()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2192
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->blockMessages()V

    .line 2193
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 2194
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 2195
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2196
    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;

    .line 2198
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_1

    .line 2200
    monitor-enter p0

    .line 2201
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 2202
    .local v0, webViewCore:Landroid/webkit/WebViewCore;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 2203
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->destroy()V

    .line 2204
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2206
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2208
    .end local v0           #webViewCore:Landroid/webkit/WebViewCore;
    :cond_1
    return-void

    .line 2204
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private destroyNative()V
    .locals 3

    .prologue
    .line 2211
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v1, :cond_0

    .line 2220
    :goto_0
    return-void

    .line 2212
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    .line 2213
    .local v0, nptr:I
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    .line 2214
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 2216
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->nativeDestroy(I)V

    goto :goto_0

    .line 2218
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v2, Landroid/webkit/WebViewClassic$DestroyNativeRunnable;

    invoke-direct {v2, v0}, Landroid/webkit/WebViewClassic$DestroyNativeRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static disablePlatformNotifications()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2256
    const-class v2, Landroid/webkit/WebViewClassic;

    monitor-enter v2

    .line 2257
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Landroid/webkit/WebViewClassic;->sNotificationsEnabled:Z

    .line 2258
    invoke-static {}, Landroid/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2259
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 2260
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->disableProxyListener(Landroid/content/Context;)V

    .line 2261
    :cond_0
    monitor-exit v2

    .line 2262
    return-void

    .line 2261
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized disableProxyListener(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1607
    const-class v1, Landroid/webkit/WebViewClassic;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1612
    :goto_0
    monitor-exit v1

    return-void

    .line 1610
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1611
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1607
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dismissFullScreenMode()V
    .locals 1

    .prologue
    .line 6056
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->inFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6057
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v0}, Landroid/webkit/PluginFullScreenHolder;->hide()V

    .line 6058
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 6059
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 6061
    :cond_0
    return-void
.end method

.method private displaySoftKeyboard(Z)V
    .locals 6
    .parameter "isTextView"

    .prologue
    const/4 v2, 0x0

    .line 5013
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5017
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v1, 0x1

    .line 5018
    .local v1, zoom:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 5019
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    iget v4, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    int-to-float v4, v4

    iget v5, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 5020
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 5027
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 5028
    return-void

    .end local v1           #zoom:Z
    :cond_1
    move v1, v2

    .line 5017
    goto :goto_0
.end method

.method private distanceSquared(IILandroid/graphics/Point;)F
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "p"

    .prologue
    .line 5510
    iget v2, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    int-to-float v0, v2

    .line 5511
    .local v0, dx:F
    iget v2, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p2

    int-to-float v1, v2

    .line 5512
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private doDrag(II)Z
    .locals 19
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 6618
    const/4 v12, 0x1

    .line 6619
    .local v12, allDrag:Z
    or-int v2, p1, p2

    if-eqz v2, :cond_2

    .line 6620
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    .line 6621
    .local v5, oldX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    .line 6622
    .local v6, oldY:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v7

    .line 6623
    .local v7, rangeX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v8

    .line 6624
    .local v8, rangeY:I
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v13, v2

    .line 6625
    .local v13, contentX:I
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v14, v2

    .line 6628
    .local v14, contentY:I
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 6631
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mTouchInEditText:Z

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p2}, Landroid/webkit/WebViewClassic;->canTextScroll(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6633
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v5

    .line 6634
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v7

    .line 6635
    move/from16 p1, v13

    .line 6636
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v6

    .line 6637
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v8

    .line 6638
    move/from16 p2, v14

    .line 6639
    const/16 v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 6640
    const/4 v12, 0x0

    .line 6666
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v2, :cond_1

    .line 6667
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/webkit/OverScrollGlow;->setOverScrollDeltas(II)V

    .line 6670
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/webkit/WebViewClassic;->mOverscrollDistance:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/webkit/WebViewClassic;->mOverscrollDistance:I

    const/4 v11, 0x1

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v11}, Landroid/webkit/WebView$PrivateAccess;->overScrollBy(IIIIIIIIZ)V

    .line 6673
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v2}, Landroid/webkit/OverScrollGlow;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6674
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 6677
    .end local v5           #oldX:I
    .end local v6           #oldY:I
    .end local v7           #rangeX:I
    .end local v8           #rangeY:I
    .end local v13           #contentX:I
    .end local v14           #contentY:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->keepZoomPickerVisible()V

    .line 6678
    return v12

    .line 6641
    .restart local v5       #oldX:I
    .restart local v6       #oldY:I
    .restart local v7       #rangeX:I
    .restart local v8       #rangeY:I
    .restart local v13       #contentX:I
    .restart local v14       #contentY:I
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    if-eqz v2, :cond_0

    .line 6644
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v15, v2, Landroid/graphics/Rect;->right:I

    .line 6645
    .local v15, maxX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 6646
    .local v16, maxY:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v13

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 6648
    .local v17, resultX:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v14

    move/from16 v0, v16

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 6651
    .local v18, resultY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_4

    or-int v2, v13, v14

    if-nez v2, :cond_0

    .line 6655
    :cond_4
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 6656
    move/from16 p1, v13

    .line 6657
    move/from16 p2, v14

    .line 6658
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 6659
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 6660
    move v7, v15

    .line 6661
    move/from16 v8, v16

    .line 6662
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private doFling()V
    .locals 27

    .prologue
    .line 7087
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 7190
    :cond_0
    :goto_0
    return-void

    .line 7090
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v6

    .line 7091
    .local v6, maxX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v8

    .line 7093
    .local v8, maxY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebViewClassic;->mMaximumFling:I

    int-to-float v7, v7

    invoke-virtual {v2, v5, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 7094
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 7095
    .local v25, vx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v26, v0

    .line 7097
    .local v26, vy:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    .line 7098
    .local v3, scrollX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    .line 7099
    .local v4, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mOverscrollDistance:I

    move/from16 v23, v0

    .line 7100
    .local v23, overscrollDistance:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mOverflingDistance:I

    move/from16 v19, v0

    .line 7103
    .local v19, overflingDistance:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v5, 0x9

    if-ne v2, v5, :cond_7

    .line 7104
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 7105
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 7106
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 7107
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    .line 7109
    const/16 v19, 0x0

    move/from16 v23, v19

    .line 7119
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    if-eqz v2, :cond_3

    .line 7120
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    and-int/lit8 v2, v2, 0x2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    .line 7121
    const/16 v26, 0x0

    .line 7126
    :cond_3
    :goto_2
    if-nez v6, :cond_4

    if-eqz v26, :cond_5

    :cond_4
    if-nez v8, :cond_9

    if-nez v25, :cond_9

    .line 7127
    :cond_5
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7128
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v2, :cond_6

    .line 7129
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7131
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7132
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 7110
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v5, 0xa

    if-ne v2, v5, :cond_2

    .line 7111
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v3

    .line 7112
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v4

    .line 7113
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v6

    .line 7114
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v8

    .line 7116
    const/16 v19, 0x0

    move/from16 v23, v19

    goto :goto_1

    .line 7123
    :cond_8
    const/16 v25, 0x0

    goto :goto_2

    .line 7136
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v21

    .line 7137
    .local v21, currentVelocity:F
    move/from16 v0, v25

    int-to-double v9, v0

    move/from16 v0, v26

    int-to-double v11, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v24, v0

    .line 7138
    .local v24, velocity:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_b

    const/4 v2, 0x0

    cmpl-float v2, v21, v2

    if-lez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    const v5, 0x3e4ccccd

    mul-float/2addr v2, v5

    cmpl-float v2, v24, v2

    if-lez v2, :cond_b

    .line 7140
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mLastVelY:F

    float-to-double v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mLastVelX:F

    float-to-double v11, v2

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    move/from16 v0, v26

    int-to-double v11, v0

    move/from16 v0, v25

    int-to-double v13, v0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v22, v0

    .line 7142
    .local v22, deltaR:F
    const v20, 0x40c90fdb

    .line 7143
    .local v20, circle:F
    const v2, 0x40b4f4ab

    cmpl-float v2, v22, v2

    if-gtz v2, :cond_a

    const v2, 0x3f20d97c

    cmpg-float v2, v22, v2

    if-gez v2, :cond_b

    .line 7144
    :cond_a
    move/from16 v0, v25

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mLastVelX:F

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v25, v0

    .line 7145
    move/from16 v0, v26

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mLastVelY:F

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v26, v0

    .line 7146
    move/from16 v0, v25

    int-to-double v9, v0

    move/from16 v0, v26

    int-to-double v11, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v24, v0

    .line 7163
    .end local v20           #circle:F
    .end local v22           #deltaR:F
    :cond_b
    if-eqz v3, :cond_c

    if-ne v3, v6, :cond_d

    :cond_c
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v2, v5, :cond_d

    .line 7164
    const/16 v25, 0x0

    .line 7166
    :cond_d
    if-eqz v4, :cond_e

    if-ne v4, v8, :cond_f

    :cond_e
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v2, v5, :cond_f

    .line 7167
    const/16 v26, 0x0

    .line 7170
    :cond_f
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_15

    .line 7171
    if-lez v25, :cond_10

    move/from16 v0, v23

    neg-int v2, v0

    if-eq v3, v2, :cond_11

    :cond_10
    if-gez v25, :cond_12

    add-int v2, v6, v23

    if-ne v3, v2, :cond_12

    .line 7173
    :cond_11
    const/16 v25, 0x0

    .line 7175
    :cond_12
    if-lez v26, :cond_13

    move/from16 v0, v23

    neg-int v2, v0

    if-eq v4, v2, :cond_14

    :cond_13
    if-gez v26, :cond_15

    add-int v2, v8, v23

    if-ne v4, v2, :cond_15

    .line 7177
    :cond_14
    const/16 v26, 0x0

    .line 7181
    :cond_15
    move/from16 v0, v25

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mLastVelX:F

    .line 7182
    move/from16 v0, v26

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mLastVelY:F

    .line 7183
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    .line 7186
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    move/from16 v0, v25

    neg-int v12, v0

    move/from16 v0, v26

    neg-int v13, v0

    const/4 v14, 0x0

    const/16 v16, 0x0

    if-nez v6, :cond_16

    const/16 v18, 0x0

    :goto_3
    move v10, v3

    move v11, v4

    move v15, v6

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v19}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 7189
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    :cond_16
    move/from16 v18, v19

    .line 7186
    goto :goto_3
.end method

.method private doTrackball(JI)V
    .locals 25
    .parameter "time"
    .parameter "metaState"

    .prologue
    .line 6953
    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Landroid/webkit/WebViewClassic;->mTrackballFirstTime:J

    sub-long/2addr v5, v7

    long-to-int v12, v5

    .line 6954
    .local v12, elapsed:I
    if-nez v12, :cond_0

    .line 6955
    const/16 v12, 0xc8

    .line 6957
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    const/high16 v5, 0x447a

    mul-float/2addr v3, v5

    int-to-float v5, v12

    div-float v22, v3, v5

    .line 6958
    .local v22, xRate:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    const/high16 v5, 0x447a

    mul-float/2addr v3, v5

    int-to-float v5, v12

    div-float v24, v3, v5

    .line 6959
    .local v24, yRate:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v19

    .line 6960
    .local v19, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v18

    .line 6961
    .local v18, viewHeight:I
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 6962
    .local v9, ax:F
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 6963
    .local v10, ay:F
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 6971
    .local v15, maxA:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    sub-int v20, v3, v19

    .line 6972
    .local v20, width:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    sub-int v13, v3, v18

    .line 6973
    .local v13, height:I
    if-gez v20, :cond_1

    const/16 v20, 0x0

    .line 6974
    :cond_1
    if-gez v13, :cond_2

    const/4 v13, 0x0

    .line 6975
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    const/high16 v5, 0x4040

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 6976
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    const/high16 v5, 0x4040

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 6977
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 6978
    const/4 v3, 0x0

    float-to-int v5, v15

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 6979
    .local v11, count:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v16

    .line 6980
    .local v16, oldScrollX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v17

    .line 6981
    .local v17, oldScrollY:I
    if-lez v11, :cond_8

    .line 6982
    cmpg-float v3, v9, v10

    if-gez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    const/16 v4, 0x13

    .line 6986
    .local v4, selectKeyCode:I
    :goto_0
    const/16 v3, 0xa

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 6993
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v3, :cond_7

    .line 6994
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    if-ge v14, v11, :cond_6

    .line 6995
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebViewClassic;->letPageHandleNavKey(IJZI)V

    .line 6994
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 6982
    .end local v4           #selectKeyCode:I
    .end local v14           #i:I
    :cond_3
    const/16 v4, 0x14

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    const/16 v4, 0x15

    goto :goto_0

    :cond_5
    const/16 v4, 0x16

    goto :goto_0

    .line 6997
    .restart local v4       #selectKeyCode:I
    .restart local v14       #i:I
    :cond_6
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebViewClassic;->letPageHandleNavKey(IJZI)V

    .line 6999
    .end local v14           #i:I
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    .line 7001
    .end local v4           #selectKeyCode:I
    :cond_8
    const/4 v3, 0x5

    if-lt v11, v3, :cond_c

    .line 7002
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebViewClassic;->scaleTrackballX(FI)I

    move-result v21

    .line 7003
    .local v21, xMove:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v13}, Landroid/webkit/WebViewClassic;->scaleTrackballY(FI)I

    move-result v23

    .line 7012
    .local v23, yMove:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    sub-int v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_9

    .line 7013
    const/16 v21, 0x0

    .line 7015
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    sub-int v3, v3, v17

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_a

    .line 7016
    const/16 v23, 0x0

    .line 7018
    :cond_a
    if-nez v21, :cond_b

    if-eqz v23, :cond_c

    .line 7019
    :cond_b
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    .line 7022
    .end local v21           #xMove:I
    .end local v23           #yMove:I
    :cond_c
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 4457
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v0, :cond_1

    .line 4458
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4459
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 4540
    :cond_0
    :goto_0
    return-void

    .line 4462
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 4464
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v9

    .line 4465
    .local v9, animateZoom:Z
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    :cond_2
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    :cond_3
    const/4 v8, 0x1

    .line 4469
    .local v8, animateScroll:Z
    :goto_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 4470
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 4471
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4472
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 4474
    :cond_4
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    if-nez v0, :cond_5

    .line 4475
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4477
    const/4 v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 4480
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 4481
    .local v12, saveCount:I
    if-eqz v9, :cond_b

    .line 4482
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->animateZoom(Landroid/graphics/Canvas;)V

    .line 4487
    :cond_6
    :goto_2
    const/4 v7, 0x0

    .line 4490
    .local v7, UIAnimationsRunning:Z
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeEvaluateLayersAnimations(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4492
    const/4 v7, 0x1

    .line 4497
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4498
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 4502
    :cond_7
    const/4 v6, 0x0

    .line 4503
    .local v6, extras:I
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mFindIsUp:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    if-eqz v0, :cond_8

    .line 4504
    const/4 v6, 0x1

    .line 4507
    :cond_8
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    .line 4508
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4509
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v0, :cond_c

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    .line 4510
    .local v2, invScreenRect:Landroid/graphics/Rect;
    :goto_3
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v0, :cond_d

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    .line 4512
    .local v3, screenRect:Landroid/graphics/Rect;
    :goto_4
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewClassic;->nativeCreateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)I

    move-result v11

    .local v11, functor:I
    move-object v0, p1

    .line 4514
    check-cast v0, Landroid/view/HardwareCanvas;

    invoke-virtual {v0, v11}, Landroid/view/HardwareCanvas;->callDrawGLFunction(I)I

    .line 4515
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mHardwareAccelSkia:Z

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getHardwareAccelSkiaEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_9

    .line 4516
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getHardwareAccelSkiaEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mHardwareAccelSkia:Z

    .line 4517
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mHardwareAccelSkia:Z

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeUseHardwareAccelSkia(Z)V

    .line 4532
    .end local v2           #invScreenRect:Landroid/graphics/Rect;
    .end local v3           #screenRect:Landroid/graphics/Rect;
    .end local v11           #functor:I
    :cond_9
    :goto_5
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4533
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->drawTextSelectionHandles(Landroid/graphics/Canvas;)V

    .line 4535
    const/4 v0, 0x2

    if-ne v6, v0, :cond_0

    .line 4536
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4537
    const/4 v0, 0x5

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto/16 :goto_0

    .line 4465
    .end local v6           #extras:I
    .end local v7           #UIAnimationsRunning:Z
    .end local v8           #animateScroll:Z
    .end local v12           #saveCount:I
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 4483
    .restart local v8       #animateScroll:Z
    .restart local v12       #saveCount:I
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4484
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_2

    .line 4509
    .restart local v6       #extras:I
    .restart local v7       #UIAnimationsRunning:Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 4510
    .restart local v2       #invScreenRect:Landroid/graphics/Rect;
    :cond_d
    const/4 v3, 0x0

    goto :goto_4

    .line 4521
    .end local v2           #invScreenRect:Landroid/graphics/Rect;
    :cond_e
    const/4 v10, 0x0

    .line 4522
    .local v10, df:Landroid/graphics/DrawFilter;
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isZoomAnimating()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v7, :cond_11

    .line 4523
    :cond_f
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 4527
    :cond_10
    :goto_6
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4528
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    invoke-direct {p0, p1, v0, v1, v6}, Landroid/webkit/WebViewClassic;->nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V

    .line 4529
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    goto :goto_5

    .line 4524
    :cond_11
    if-eqz v8, :cond_10

    .line 4525
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mScrollFilter:Landroid/graphics/DrawFilter;

    goto :goto_6
.end method

.method private drawOverScrollBackground(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 4547
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 4548
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    .line 4549
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080557

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4552
    .local v6, bm:Landroid/graphics/Bitmap;
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v6, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4554
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    .line 4555
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4556
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4557
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    const v1, -0x444445

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4560
    .end local v6           #bm:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v9, 0x0

    .line 4561
    .local v9, top:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v8

    .line 4562
    .local v8, right:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v0

    add-int v7, v9, v0

    .line 4564
    .local v7, bottom:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4565
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4566
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int v0, v9, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    sub-int v0, v8, v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int v0, v7, v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 4568
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 4569
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4571
    const/high16 v1, -0x4080

    const/4 v0, -0x1

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v7

    sget-object v5, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4573
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9, v8, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4574
    return-void
.end method

.method private drawTextSelectionHandles(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 4880
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v5

    if-nez v5, :cond_0

    .line 4917
    :goto_0
    return-void

    .line 4883
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V

    .line 4884
    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v5, :cond_1

    .line 4885
    const/4 v5, 0x4

    new-array v2, v5, [I

    .line 4886
    .local v2, handles:[I
    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 4887
    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    .line 4888
    .local v3, start_x:I
    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v4

    .line 4889
    .local v4, start_y:I
    const/4 v5, 0x2

    aget v5, v2, v5

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    .line 4890
    .local v0, end_x:I
    const/4 v5, 0x3

    aget v5, v2, v5

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    .line 4892
    .local v1, end_y:I
    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v5, :cond_2

    .line 4894
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 4895
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4911
    .end local v0           #end_x:I
    .end local v1           #end_y:I
    .end local v2           #handles:[I
    .end local v3           #start_x:I
    .end local v4           #start_y:I
    :cond_1
    :goto_1
    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v5, :cond_3

    .line 4912
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4900
    .restart local v0       #end_x:I
    .restart local v1       #end_y:I
    .restart local v2       #handles:[I
    .restart local v3       #start_x:I
    .restart local v4       #start_y:I
    :cond_2
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v3, v5

    .line 4901
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4904
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v0, v5

    .line 4905
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 4914
    .end local v0           #end_x:I
    .end local v1           #end_y:I
    .end local v2           #handles:[I
    .end local v3           #start_x:I
    .end local v4           #start_y:I
    :cond_3
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4915
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public static enablePlatformNotifications()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2243
    const-class v2, Landroid/webkit/WebViewClassic;

    monitor-enter v2

    .line 2244
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Landroid/webkit/WebViewClassic;->sNotificationsEnabled:Z

    .line 2245
    invoke-static {}, Landroid/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2246
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 2247
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->setupProxyListener(Landroid/content/Context;)V

    .line 2248
    :cond_0
    monitor-exit v2

    .line 2249
    return-void

    .line 2248
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private endScrollEdit()V
    .locals 2

    .prologue
    .line 6542
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    .line 6543
    return-void
.end method

.method private endSelectingText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4854
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    .line 4855
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    .line 4856
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 4857
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 4858
    return-void
.end method

.method private ensureFunctorDetached()V
    .locals 3

    .prologue
    .line 2182
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2183
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->nativeGetDrawGLFunction(I)I

    move-result v0

    .line 2184
    .local v0, drawGLFunction:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 2185
    .local v1, viewRoot:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2186
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->detachFunctor(I)V

    .line 2189
    .end local v0           #drawGLFunction:I
    .end local v1           #viewRoot:Landroid/view/ViewRootImpl;
    :cond_0
    return-void
.end method

.method private ensureSelectionHandles()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4861
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 4862
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 4864
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 4866
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 4868
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->setAlpha(I)V

    .line 4869
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    neg-int v1, v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenterOffset:Landroid/graphics/Point;

    .line 4871
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    neg-int v1, v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeftOffset:Landroid/graphics/Point;

    .line 4873
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRightOffset:Landroid/graphics/Point;

    .line 4877
    :cond_0
    return-void
.end method

.method private extendScroll(I)Z
    .locals 4
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 2810
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 2811
    .local v0, finalY:I
    add-int v3, v0, p1

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v1

    .line 2812
    .local v1, newY:I
    if-ne v1, v0, :cond_0

    .line 2815
    :goto_0
    return v2

    .line 2813
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 2814
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-static {v2, p1}, Landroid/webkit/WebViewClassic;->computeDuration(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/OverScroller;->extendDuration(I)V

    .line 2815
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "addr"

    .prologue
    .line 3941
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/webkit/WebViewClassic;->findAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddress(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "addr"
    .parameter "caseInsensitive"

    .prologue
    .line 3966
    invoke-static {p0, p1}, Landroid/webkit/WebViewCore;->nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findAllBody(Ljava/lang/String;Z)I
    .locals 6
    .parameter "find"
    .parameter "isAsync"

    .prologue
    const/16 v4, 0xdd

    const/4 v1, 0x0

    .line 3832
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_1

    .line 3851
    :cond_0
    :goto_0
    return v1

    .line 3833
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    .line 3834
    if-eqz p1, :cond_0

    .line 3835
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 3836
    new-instance v2, Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-direct {v2, p1}, Landroid/webkit/WebViewCore$FindAllRequest;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    .line 3837
    if-eqz p2, :cond_2

    .line 3838
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-virtual {v2, v4, v3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 3841
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    monitor-enter v2

    .line 3843
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xdd

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 3844
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    iget v3, v3, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchCount:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 3845
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3848
    :catch_0
    move-exception v0

    .line 3849
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    monitor-exit v2

    goto :goto_0

    .line 3852
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3851
    :cond_3
    :try_start_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    iget v1, v1, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchCount:I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "webView"

    .prologue
    .line 1500
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewProvider()Landroid/webkit/WebViewProvider;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClassic;

    goto :goto_0
.end method

.method private getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;
    .locals 1

    .prologue
    .line 1848
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    if-nez v0, :cond_0

    .line 1849
    new-instance v0, Landroid/webkit/AccessibilityInjector;

    invoke-direct {v0, p0}, Landroid/webkit/AccessibilityInjector;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    .line 1851
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    return-object v0
.end method

.method private getMaxTextScrollX()I
    .locals 3

    .prologue
    .line 7539
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getMaxTextScrollY()I
    .locals 3

    .prologue
    .line 7543
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getOverlappingActionModeHeight()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2055
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    if-nez v1, :cond_0

    .line 2063
    :goto_0
    return v0

    .line 2058
    :cond_0
    iget v1, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    if-gez v1, :cond_1

    .line 2059
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 2060
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v1}, Landroid/webkit/FindActionModeCallback;->getActionModeGlobalBottom()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 2063
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    goto :goto_0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4433
    const-class v1, Landroid/webkit/WebViewClassic;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/webkit/PluginList;

    invoke-direct {v0}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getScaledMaxXScroll()I
    .locals 3

    .prologue
    .line 8761
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 8762
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 8769
    .local v1, width:I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v2

    return v2

    .line 8764
    .end local v1           #width:I
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8765
    .local v0, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 8766
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #width:I
    goto :goto_0
.end method

.method private getScaledMaxYScroll()I
    .locals 4

    .prologue
    .line 8774
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 8775
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 8784
    .local v0, height:I
    :goto_0
    int-to-float v2, v0

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 8777
    .end local v0           #height:I
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 8778
    .local v1, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 8779
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .restart local v0       #height:I
    goto :goto_0
.end method

.method private getSelectionHandles([I)V
    .locals 2
    .parameter "handles"

    .prologue
    .line 4924
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    aput v1, p1, v0

    .line 4925
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    aput v1, p1, v0

    .line 4926
    const/4 v0, 0x2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    aput v1, p1, v0

    .line 4927
    const/4 v0, 0x3

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    aput v1, p1, v0

    .line 4928
    return-void
.end method

.method private static getTextScrollDelta(FJ)I
    .locals 7
    .parameter "speed"
    .parameter "deltaT"

    .prologue
    .line 6546
    long-to-float v3, p1

    mul-float v0, p0, v3

    .line 6547
    .local v0, distance:F
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 6548
    .local v1, intDistance:I
    int-to-float v3, v1

    sub-float v2, v0, v3

    .line 6549
    .local v2, probability:F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    float-to-double v5, v2

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 6550
    add-int/lit8 v1, v1, 0x1

    .line 6552
    :cond_0
    return v1
.end method

.method private static getTextScrollSpeed(III)F
    .locals 2
    .parameter "coordinate"
    .parameter "min"
    .parameter "max"

    .prologue
    const v1, 0x3c23d70a

    .line 6524
    if-ge p0, p1, :cond_0

    .line 6525
    sub-int v0, p0, p1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 6529
    :goto_0
    return v0

    .line 6526
    :cond_0
    if-lt p0, p2, :cond_1

    .line 6527
    sub-int v0, p0, p2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    goto :goto_0

    .line 6529
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextScrollX()I
    .locals 1

    .prologue
    .line 7531
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    return v0
.end method

.method private getTextScrollY()I
    .locals 1

    .prologue
    .line 7535
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    return v0
.end method

.method private getThemeColor(Ljava/lang/String;)I
    .locals 2
    .parameter "colorName"

    .prologue
    .line 9011
    const/4 v0, 0x0

    .line 9013
    .local v0, color:I
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getThemeColor(Ljava/lang/String;)I

    move-result v0

    .line 9015
    return v0
.end method

.method private getVisibleTitleHeightImpl()I
    .locals 3

    .prologue
    .line 2048
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getOverlappingActionModeHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private goBackOrForward(IZ)V
    .locals 3
    .parameter "steps"
    .parameter "ignoreSnapshot"

    .prologue
    .line 2789
    if-eqz p1, :cond_0

    .line 2790
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 2791
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x6a

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2794
    :cond_0
    return-void

    .line 2791
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goBackOrForwardImpl(I)V
    .locals 1
    .parameter "steps"

    .prologue
    .line 2785
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->goBackOrForward(IZ)V

    .line 2786
    return-void
.end method

.method private static handleCertTrustChanged()V
    .locals 2

    .prologue
    .line 1552
    const/16 v0, 0xdc

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    .line 1553
    return-void
.end method

.method private static handleProxyBroadcast(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/16 v2, 0xc1

    .line 1615
    const-string/jumbo v1, "proxy"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyProperties;

    .line 1616
    .local v0, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1617
    :cond_0
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    .line 1621
    :goto_0
    return-void

    .line 1620
    :cond_1
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleTouchEventCommon(Landroid/view/MotionEvent;III)V
    .locals 30
    .parameter "event"
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 6151
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v17

    .line 6153
    .local v17, detector:Landroid/view/ScaleGestureDetector;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    .line 6159
    .local v18, eventTime:J
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 6160
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 6162
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    sub-int v15, v3, p3

    .line 6163
    .local v15, deltaX:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    sub-int v16, v3, p4

    .line 6164
    .local v16, deltaY:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int v3, v3, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v13

    .line 6165
    .local v13, contentX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int v3, v3, p4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v14

    .line 6167
    .local v14, contentY:I
    packed-switch p2, :pswitch_data_0

    .line 6514
    :cond_0
    :goto_0
    return-void

    .line 6169
    :pswitch_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    .line 6170
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mEditTextScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6171
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mEditTextScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 6173
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 6177
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 6178
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 6179
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    .line 6180
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 6246
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 6248
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6250
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6253
    :cond_4
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/webkit/WebViewClassic;->startTouch(FFJ)V

    .line 6254
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_0

    .line 6255
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mTouchInEditText:Z

    goto :goto_0

    .line 6181
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6182
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6183
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->removeTouchHighlight()V

    .line 6184
    mul-int v3, v15, v15

    mul-int v4, v16, v16

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_6

    .line 6185
    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto :goto_1

    .line 6187
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto :goto_1

    .line 6190
    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 6191
    sget-boolean v3, Landroid/webkit/WebViewClassic;->mLogEvent:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebViewClassic;->mLastTouchUpTime:J

    sub-long v3, v18, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_8

    .line 6192
    const v3, 0x111d6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/webkit/WebViewClassic;->mLastTouchUpTime:J

    sub-long v6, v18, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6195
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 6196
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v3, :cond_2

    .line 6197
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V

    .line 6198
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v3

    sub-int v3, p4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    add-int v29, v3, v4

    .line 6199
    .local v29, shiftedY:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int v28, p3, v3

    .line 6201
    .local v28, shiftedX:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6203
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 6205
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v4, v4, v28

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 6206
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v29

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v5, v5, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v6, v6, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 6209
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    .line 6210
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    .line 6211
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x90

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6212
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->hidePasteButton()V

    goto/16 :goto_1

    .line 6213
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6216
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 6218
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v4, v28

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 6220
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v29

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v5, v5, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v6, v6, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 6223
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    .line 6224
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    goto/16 :goto_1

    .line 6225
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 6228
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 6230
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, v28

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 6232
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v29

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    iget-object v5, v5, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    iget-object v6, v6, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 6235
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    .line 6236
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    goto/16 :goto_1

    .line 6237
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v3, :cond_2

    .line 6238
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_1

    .line 6261
    .end local v28           #shiftedX:I
    .end local v29           #shiftedY:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    if-nez v3, :cond_d

    mul-int v3, v15, v15

    mul-int v4, v16, v16

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I

    if-lt v3, v4, :cond_d

    .line 6263
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6264
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6265
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    .line 6266
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_c

    .line 6267
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 6269
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->removeTouchHighlight()V

    .line 6271
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-eqz v3, :cond_14

    .line 6275
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    .line 6276
    .local v25, parent:Landroid/view/ViewParent;
    if-eqz v25, :cond_e

    .line 6277
    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6280
    :cond_e
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_f

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 6281
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v3

    add-int v20, v13, v3

    .line 6283
    .local v20, handleX:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v3

    add-int v21, v14, v3

    .line 6285
    .local v21, handleY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 6286
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v21

    int-to-float v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/webkit/QuadF;->containsPoint(FF)Z

    move-result v22

    .line 6288
    .local v22, inCursorText:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v23

    .line 6290
    .local v23, inEditBounds:Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_13

    if-nez v23, :cond_13

    .line 6291
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->beginScrollEdit()V

    .line 6295
    :goto_2
    if-nez v22, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_11

    if-nez v23, :cond_11

    .line 6296
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->snapDraggingCursor()V

    .line 6298
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->updateWebkitSelection()V

    .line 6299
    if-nez v22, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_12

    if-eqz v23, :cond_12

    .line 6301
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->snapDraggingCursor()V

    .line 6303
    :cond_12
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 6304
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    .line 6305
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 6293
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->endScrollEdit()V

    goto :goto_2

    .line 6310
    .end local v20           #handleX:I
    .end local v21           #handleY:I
    .end local v22           #inCursorText:Z
    .end local v23           #inEditBounds:Z
    .end local v25           #parent:Landroid/view/ViewParent;
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    .line 6315
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_18

    .line 6316
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got null mVelocityTracker when  mTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6322
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_17

    .line 6326
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    if-eqz v3, :cond_0

    .line 6333
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/webkit/WebViewClassic;->calculateDragAngle(II)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    .line 6334
    if-eqz v17, :cond_15

    invoke-virtual/range {v17 .. v17}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_16

    .line 6336
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    const/high16 v4, 0x3e80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1a

    .line 6337
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 6338
    if-lez v15, :cond_19

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSnapPositive:Z

    .line 6339
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    .line 6347
    :cond_16
    :goto_5
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 6348
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 6349
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    .line 6350
    const/4 v15, 0x0

    .line 6351
    const/16 v16, 0x0

    .line 6353
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/webkit/WebViewClassic;->startScrollingLayer(FF)V

    .line 6354
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->startDrag()V

    .line 6358
    :cond_17
    const/16 v24, 0x0

    .line 6359
    .local v24, keepScrollBarsVisible:Z
    if-nez v15, :cond_1c

    if-nez v16, :cond_1c

    .line 6360
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 6319
    .end local v24           #keepScrollBarsVisible:Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 6338
    :cond_19
    const/4 v3, 0x0

    goto :goto_4

    .line 6340
    :cond_1a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    const/high16 v4, 0x3fa0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_16

    .line 6341
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 6342
    if-lez v16, :cond_1b

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSnapPositive:Z

    .line 6343
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    goto :goto_5

    .line 6342
    :cond_1b
    const/4 v3, 0x0

    goto :goto_6

    .line 6362
    .restart local v24       #keepScrollBarsVisible:Z
    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/webkit/WebViewClassic;->calculateDragAngle(II)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40a0

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    .line 6365
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    if-eqz v3, :cond_20

    .line 6366
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1d

    .line 6368
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    const v4, 0x3f733333

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1d

    .line 6369
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 6372
    :cond_1d
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1e

    .line 6374
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    const v4, 0x3ecccccd

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1e

    .line 6375
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 6389
    :cond_1e
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    if-eqz v3, :cond_1f

    .line 6390
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    .line 6391
    const/16 v16, 0x0

    .line 6396
    :cond_1f
    :goto_8
    mul-int v3, v15, v15

    mul-int v4, v16, v16

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I

    if-le v3, v4, :cond_25

    .line 6397
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 6403
    :goto_9
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    .line 6404
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/webkit/WebViewClassic;->doDrag(II)Z

    move-result v10

    .line 6405
    .local v10, allDrag:Z
    if-eqz v10, :cond_26

    .line 6406
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 6407
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    goto/16 :goto_0

    .line 6379
    .end local v10           #allDrag:Z
    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    const/high16 v4, 0x3e80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_22

    .line 6380
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 6381
    if-lez v15, :cond_21

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSnapPositive:Z

    .line 6382
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    const/4 v4, 0x0

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    goto :goto_7

    .line 6381
    :cond_21
    const/4 v3, 0x0

    goto :goto_a

    .line 6383
    :cond_22
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    const/high16 v4, 0x3fa0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1e

    .line 6384
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 6385
    if-lez v16, :cond_23

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSnapPositive:Z

    .line 6386
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    const/high16 v4, 0x4000

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mAverageAngle:F

    goto/16 :goto_7

    .line 6385
    :cond_23
    const/4 v3, 0x0

    goto :goto_b

    .line 6393
    :cond_24
    const/4 v15, 0x0

    goto :goto_8

    .line 6399
    :cond_25
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 6400
    const/16 v24, 0x1

    goto :goto_9

    .line 6409
    .restart local v10       #allDrag:Z
    :cond_26
    int-to-float v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v11, v3

    .line 6410
    .local v11, contentDeltaX:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v26

    .line 6411
    .local v26, roundedDeltaX:I
    move/from16 v0, v16

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v12, v3

    .line 6412
    .local v12, contentDeltaY:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v27

    .line 6413
    .local v27, roundedDeltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    sub-int v3, v3, v26

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 6414
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    sub-int v3, v3, v27

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    goto/16 :goto_0

    .line 6421
    .end local v10           #allDrag:Z
    .end local v11           #contentDeltaX:I
    .end local v12           #contentDeltaY:I
    .end local v24           #keepScrollBarsVisible:Z
    .end local v26           #roundedDeltaX:I
    .end local v27           #roundedDeltaY:I
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->endScrollEdit()V

    .line 6422
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    if-nez v3, :cond_27

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v3, :cond_27

    .line 6424
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->showPasteWindow()V

    .line 6425
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->stopTouch()V

    goto/16 :goto_0

    .line 6428
    :cond_27
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebViewClassic;->mLastTouchUpTime:J

    .line 6429
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z

    if-eqz v3, :cond_28

    .line 6430
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mAutoScrollY:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mAutoScrollX:I

    .line 6432
    :cond_28
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    packed-switch v3, :pswitch_data_1

    .line 6501
    :cond_29
    :goto_c
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->stopTouch()V

    goto/16 :goto_0

    .line 6434
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6435
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6436
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto :goto_c

    .line 6441
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6442
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6443
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    if-nez v3, :cond_2c

    .line 6444
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v3, :cond_2a

    .line 6446
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-nez v3, :cond_29

    .line 6447
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_c

    .line 6453
    :cond_2a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->canZoomIn()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->canZoomOut()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 6455
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_c

    .line 6464
    :cond_2c
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6467
    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    sub-long v3, v18, v3

    const-wide/16 v5, 0xfa

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2e

    .line 6468
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2d

    .line 6469
    const-string/jumbo v3, "webview"

    const-string v4, "Got null mVelocityTracker"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6476
    :goto_d
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 6477
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->doFling()V

    goto/16 :goto_c

    .line 6471
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_d

    .line 6480
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 6483
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 6487
    :cond_2f
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 6488
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 6494
    :pswitch_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    .line 6495
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 6496
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v3, :cond_29

    .line 6497
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_c

    .line 6505
    :pswitch_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_30

    .line 6506
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 6508
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 6510
    :cond_30
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->cancelTouch()V

    goto/16 :goto_0

    .line 6167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_8
    .end packed-switch

    .line 6432
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private hidePasteButton()V
    .locals 1

    .prologue
    .line 5462
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

    if-eqz v0, :cond_0

    .line 5463
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$PastePopupWindow;->hide()V

    .line 5465
    :cond_0
    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 5032
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 5033
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5034
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5036
    :cond_0
    return-void
.end method

.method private inFullScreenMode()Z
    .locals 1

    .prologue
    .line 6052
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1724
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/webkit/WebViewClassic$OnTrimMemoryListener;->init(Landroid/content/Context;)V

    .line 1725
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 1726
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 1727
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 1729
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1730
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 1731
    .local v2, slop:I
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I

    .line 1732
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    .line 1733
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebViewClassic;->mDoubleTapSlopSquare:I

    .line 1734
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1737
    .local v1, density:F
    const/high16 v3, 0x4180

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    .line 1738
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3, v1}, Landroid/webkit/ZoomManager;->init(F)V

    .line 1739
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mMaximumFling:I

    .line 1742
    const/high16 v3, 0x3f80

    mul-float v4, v1, v1

    div-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebViewClassic;->DRAG_LAYER_INVERSE_DENSITY_SQUARED:F

    .line 1744
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mOverscrollDistance:I

    .line 1745
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mOverflingDistance:I

    .line 1747
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v3}, Landroid/webkit/WebView$PrivateAccess;->super_getScrollBarStyle()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->setScrollBarStyle(I)V

    .line 1750
    new-instance v3, Ljava/util/Vector;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    .line 1751
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 1754
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.browser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsBrowserApp:Z

    .line 1757
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsBrowserApp:Z

    if-nez v3, :cond_0

    .line 1758
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.quicinc.vellamo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsBenchmarkApp:Z

    .line 1759
    :cond_0
    return-void
.end method

.method private invalidateContentRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 3169
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->viewInvalidate(IIII)V

    .line 3170
    return-void
.end method

.method private isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private isEnterActionKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 5193
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 3

    .prologue
    .line 1855
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyCodeToSoundsEffect(I)I
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 6939
    packed-switch p1, :pswitch_data_0

    .line 6949
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 6941
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 6943
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 6945
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 6947
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 6939
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private letPageHandleNavKey(IJZI)V
    .locals 12
    .parameter "keyCode"
    .parameter "time"
    .parameter "down"
    .parameter "metaState"

    .prologue
    .line 8800
    if-eqz p4, :cond_0

    .line 8801
    const/4 v5, 0x0

    .line 8806
    .local v5, keyEventAction:I
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    and-int/lit8 v1, p5, 0x1

    and-int/lit8 v2, p5, 0x2

    or-int/2addr v1, v2

    and-int/lit8 v2, p5, 0x4

    or-int v8, v1, v2

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 8811
    .local v0, event:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 8812
    return-void

    .line 8803
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v5           #keyEventAction:I
    :cond_0
    const/4 v5, 0x1

    .restart local v5       #keyEventAction:I
    goto :goto_0
.end method

.method private loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 2626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2627
    .local v0, dataUrl:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2628
    const-string v1, "base64"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2629
    const-string v1, ";base64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2632
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2633
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;)V

    .line 2634
    return-void
.end method

.method private loadUrlImpl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 2594
    if-nez p1, :cond_0

    .line 2598
    :goto_0
    return-void

    .line 2597
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2577
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 2578
    new-instance v0, Landroid/webkit/WebViewCore$GetUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$GetUrlData;-><init>()V

    .line 2579
    .local v0, arg:Landroid/webkit/WebViewCore$GetUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    .line 2580
    iput-object p2, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    .line 2581
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2582
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 2583
    return-void
.end method

.method private native nativeCopyBaseContentToPicture(Landroid/graphics/Picture;)V
.end method

.method private native nativeCreate(ILjava/lang/String;Z)V
.end method

.method private native nativeCreateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)I
.end method

.method private native nativeDebugDump()V
.end method

.method private static native nativeDestroy(I)V
.end method

.method private native nativeDiscardAllTextures()V
.end method

.method private native nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V
.end method

.method private native nativeDumpDisplayTree(Ljava/lang/String;)V
.end method

.method private native nativeEvaluateLayersAnimations(I)Z
.end method

.method private static native nativeFindMaxVisibleRect(IILandroid/graphics/Rect;)V
.end method

.method private native nativeGetBackgroundColor(I)I
.end method

.method private native nativeGetBaseLayer(I)I
.end method

.method private native nativeGetDrawGLFunction(I)I
.end method

.method private static native nativeGetHandleLayerId(IILandroid/graphics/Point;Landroid/webkit/QuadF;)I
.end method

.method private native nativeGetSelection()Ljava/lang/String;
.end method

.method private native nativeHasContent()Z
.end method

.method private static native nativeMapLayerRect(IILandroid/graphics/Rect;)V
.end method

.method private static native nativeOnTrimMemory(I)V
.end method

.method private native nativeScrollLayer(IIII)Z
.end method

.method private native nativeScrollableLayer(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)I
.end method

.method private native nativeSetBaseLayer(IIZZI)Z
.end method

.method private native nativeSetHeightCanMeasure(Z)V
.end method

.method private static native nativeSetHwAccelerated(IZ)I
.end method

.method private native nativeSetIsScrolling(Z)V
.end method

.method private static native nativeSetPauseDrawing(IZ)V
.end method

.method private static native nativeSetTextSelection(II)V
.end method

.method private native nativeStopGL(I)V
.end method

.method private native nativeTileProfilingClear()V
.end method

.method private native nativeTileProfilingGetFloat(IILjava/lang/String;)F
.end method

.method private native nativeTileProfilingGetInt(IILjava/lang/String;)I
.end method

.method private native nativeTileProfilingNumFrames()I
.end method

.method private native nativeTileProfilingNumTilesInFrame(I)I
.end method

.method private native nativeTileProfilingStart()V
.end method

.method private native nativeTileProfilingStop()F
.end method

.method private native nativeUpdateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;F)V
.end method

.method private native nativeUseHardwareAccelSkia(Z)V
.end method

.method private onHandleUiEvent(Landroid/view/MotionEvent;II)V
    .locals 4
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 1387
    packed-switch p2, :pswitch_data_0

    .line 1407
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1389
    :pswitch_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 1390
    .local v0, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v0, :cond_0

    .line 1391
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->performLongClick()Z

    goto :goto_0

    .line 1395
    .end local v0           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :pswitch_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/ZoomManager;->handleDoubleTap(FF)V

    goto :goto_0

    .line 1398
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->onHandleUiTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1401
    :pswitch_4
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1402
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 1403
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->overrideLoading(Ljava/lang/String;)V

    goto :goto_0

    .line 1387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private onHandleUiTouchEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "ev"

    .prologue
    .line 1410
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v12}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v3

    .line 1413
    .local v3, detector:Landroid/view/ScaleGestureDetector;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1414
    .local v0, action:I
    const/4 v12, 0x6

    if-ne v0, v12, :cond_1

    const/4 v6, 0x1

    .line 1415
    .local v6, pointerUp:Z
    :goto_0
    const/4 v12, 0x6

    if-eq v0, v12, :cond_0

    const/4 v12, 0x5

    if-ne v0, v12, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 1418
    .local v1, configChanged:Z
    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 1421
    .local v7, skipIndex:I
    :goto_2
    const/4 v8, 0x0

    .local v8, sumX:F
    const/4 v9, 0x0

    .line 1422
    .local v9, sumY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 1423
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-ge v5, v2, :cond_5

    .line 1424
    if-ne v7, v5, :cond_4

    .line 1423
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1414
    .end local v1           #configChanged:Z
    .end local v2           #count:I
    .end local v5           #i:I
    .end local v6           #pointerUp:Z
    .end local v7           #skipIndex:I
    .end local v8           #sumX:F
    .end local v9           #sumY:F
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1415
    .restart local v6       #pointerUp:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1418
    .restart local v1       #configChanged:Z
    :cond_3
    const/4 v7, -0x1

    goto :goto_2

    .line 1425
    .restart local v2       #count:I
    .restart local v5       #i:I
    .restart local v7       #skipIndex:I
    .restart local v8       #sumX:F
    .restart local v9       #sumY:F
    :cond_4
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v8, v12

    .line 1426
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    add-float/2addr v9, v12

    goto :goto_4

    .line 1428
    :cond_5
    if-eqz v6, :cond_8

    add-int/lit8 v4, v2, -0x1

    .line 1429
    .local v4, div:I
    :goto_5
    int-to-float v12, v4

    div-float v10, v8, v12

    .line 1430
    .local v10, x:F
    int-to-float v12, v4

    div-float v11, v9, v12

    .line 1432
    .local v11, y:F
    if-eqz v1, :cond_6

    .line 1433
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 1434
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v12

    iput v12, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    .line 1435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    iput-wide v12, p0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    .line 1436
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->cancelLongPress()V

    .line 1437
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1440
    :cond_6
    if-eqz v3, :cond_a

    .line 1441
    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1442
    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    iput-wide v12, p0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    .line 1445
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v12}, Landroid/webkit/ZoomManager;->supportsPanDuringZoom()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1472
    :cond_7
    :goto_6
    return-void

    .end local v4           #div:I
    .end local v10           #x:F
    .end local v11           #y:F
    :cond_8
    move v4, v2

    .line 1428
    goto :goto_5

    .line 1448
    .restart local v4       #div:I
    .restart local v10       #x:F
    .restart local v11       #y:F
    :cond_9
    const/4 v12, 0x3

    iput v12, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 1449
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_a

    .line 1450
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    iput-object v12, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1455
    :cond_a
    const/4 v12, 0x5

    if-ne v0, v12, :cond_d

    .line 1456
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->cancelTouch()V

    .line 1457
    const/4 v0, 0x0

    .line 1466
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_c

    iget-boolean v12, p0, Landroid/webkit/WebViewClassic;->mEmailUsingFlag:Z

    const/4 v13, 0x1

    if-eq v12, v13, :cond_7

    .line 1471
    :cond_c
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-direct {p0, p1, v0, v12, v13}, Landroid/webkit/WebViewClassic;->handleTouchEventCommon(Landroid/view/MotionEvent;III)V

    goto :goto_6

    .line 1458
    :cond_d
    const/4 v12, 0x2

    if-ne v0, v12, :cond_b

    .line 1460
    const/4 v12, 0x0

    cmpg-float v12, v10, v12

    if-ltz v12, :cond_7

    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_b

    goto :goto_6
.end method

.method private onZoomAnimationEnd()V
    .locals 2

    .prologue
    .line 4801
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4802
    return-void
.end method

.method private onZoomAnimationStart()V
    .locals 1

    .prologue
    .line 4795
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 4796
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 4798
    :cond_0
    return-void
.end method

.method private overrideLoading(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 7327
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    .line 7328
    return-void
.end method

.method static pinLoc(III)I
    .locals 1
    .parameter "x"
    .parameter "viewMax"
    .parameter "docMax"

    .prologue
    .line 3008
    if-ge p2, p1, :cond_1

    .line 3010
    const/4 p0, 0x0

    .line 3019
    :cond_0
    :goto_0
    return p0

    .line 3012
    :cond_1
    if-gez p0, :cond_2

    .line 3013
    const/4 p0, 0x0

    goto :goto_0

    .line 3015
    :cond_2
    add-int v0, p0, p1

    if-le v0, p2, :cond_0

    .line 3016
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private pinScrollBy(IIZI)Z
    .locals 2
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 4161
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method private pinScrollTo(IIZI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 4166
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->abortAnimation()V

    .line 4167
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result p1

    .line 4168
    invoke-virtual {p0, p2}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result p2

    .line 4169
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    sub-int v3, p1, v0

    .line 4170
    .local v3, dx:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int v4, p2, v0

    .line 4172
    .local v4, dy:I
    or-int v0, v3, v4

    if-nez v0, :cond_0

    .line 4173
    const/4 v0, 0x0

    .line 4183
    :goto_0
    return v0

    .line 4175
    :cond_0
    if-eqz p3, :cond_2

    .line 4177
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    if-lez p4, :cond_1

    move v5, p4

    :goto_1
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4179
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 4183
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 4177
    :cond_1
    invoke-static {v3, v4}, Landroid/webkit/WebViewClassic;->computeDuration(II)I

    move-result v5

    goto :goto_1

    .line 4181
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_2
.end method

.method private postInvalidate()V
    .locals 1

    .prologue
    .line 8991
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->postInvalidate()V

    .line 8992
    return-void
.end method

.method private recordNewContentSize(IIZ)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "updateLayout"

    .prologue
    .line 3184
    or-int v0, p1, p2

    if-nez v0, :cond_0

    .line 3185
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 3209
    :goto_0
    return-void

    .line 3190
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    if-eq v0, p2, :cond_3

    .line 3192
    :cond_1
    iput p1, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    .line 3193
    iput p2, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    .line 3196
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-nez v0, :cond_2

    .line 3198
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebViewClassic;->updateScrollCoordinates(II)Z

    .line 3199
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3202
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFinalX(I)V

    .line 3203
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 3206
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 3208
    :cond_3
    invoke-direct {p0, p3}, Landroid/webkit/WebViewClassic;->contentSizeChanged(Z)V

    goto :goto_0
.end method

.method private relocateAutoCompletePopup()V
    .locals 2

    .prologue
    .line 5002
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v0, :cond_0

    .line 5003
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v0}, Landroid/webkit/AutoCompletePopup;->resetRect()V

    .line 5004
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    .line 5006
    :cond_0
    return-void
.end method

.method private removeTouchHighlight()V
    .locals 1

    .prologue
    .line 4652
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->setTouchHighlightRects(Landroid/webkit/WebViewCore$WebKitHitTest;)V

    .line 4653
    return-void
.end method

.method private resetCaretTimer()V
    .locals 4

    .prologue
    const/16 v3, 0x90

    .line 5542
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5543
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-nez v0, :cond_0

    .line 5544
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5547
    :cond_0
    return-void
.end method

.method private restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 5
    .parameter "p"
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 2389
    const-string/jumbo v3, "scrollX"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2390
    .local v1, sx:I
    const-string/jumbo v3, "scrollY"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2392
    .local v2, sy:I
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    .line 2393
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    .line 2395
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->setScrollXRaw(I)V

    .line 2396
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setScrollYRaw(I)V

    .line 2397
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3, p2}, Landroid/webkit/ZoomManager;->restoreZoomState(Landroid/os/Bundle;)V

    .line 2398
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    .line 2399
    .local v0, scale:F
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mHistoryWidth:I

    .line 2400
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mHistoryHeight:I

    .line 2402
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 2403
    return-void
.end method

.method private saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 3
    .parameter "basename"
    .parameter "autoname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2689
    .local p3, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x93

    new-instance v2, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;

    invoke-direct {v2, p1, p2, p3}, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;-><init>(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2691
    return-void
.end method

.method private static scaleAlongSegment(IILandroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 5435
    iget v7, p3, Landroid/graphics/PointF;->x:F

    iget v8, p2, Landroid/graphics/PointF;->x:F

    sub-float v2, v7, v8

    .line 5436
    .local v2, abX:F
    iget v7, p3, Landroid/graphics/PointF;->y:F

    iget v8, p2, Landroid/graphics/PointF;->y:F

    sub-float v3, v7, v8

    .line 5437
    .local v3, abY:F
    mul-float v7, v2, v2

    mul-float v8, v3, v3

    add-float v0, v7, v8

    .line 5440
    .local v0, ab2:F
    int-to-float v7, p0

    iget v8, p2, Landroid/graphics/PointF;->x:F

    sub-float v4, v7, v8

    .line 5441
    .local v4, apX:F
    int-to-float v7, p1

    iget v8, p2, Landroid/graphics/PointF;->y:F

    sub-float v5, v7, v8

    .line 5442
    .local v5, apY:F
    mul-float v7, v4, v2

    mul-float v8, v5, v3

    add-float v1, v7, v8

    .line 5443
    .local v1, abDotAP:F
    div-float v6, v1, v0

    .line 5444
    .local v6, scale:F
    return v6
.end method

.method private static scaleCoordinate(FFF)F
    .locals 2
    .parameter "scale"
    .parameter "coord1"
    .parameter "coord2"

    .prologue
    .line 6759
    sub-float v0, p2, p1

    .line 6760
    .local v0, diff:F
    mul-float v1, p0, v0

    add-float/2addr v1, p1

    return v1
.end method

.method private scaleTrackballX(FI)I
    .locals 4
    .parameter "xRate"
    .parameter "width"

    .prologue
    .line 6911
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 6912
    .local v1, xMove:I
    move v0, v1

    .line 6913
    .local v0, nextXMove:I
    if-lez v1, :cond_1

    .line 6914
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    if-le v1, v2, :cond_0

    .line 6915
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    sub-int/2addr v1, v2

    .line 6920
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    .line 6921
    return v1

    .line 6917
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    if-ge v1, v2, :cond_0

    .line 6918
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scaleTrackballY(FI)I
    .locals 4
    .parameter "yRate"
    .parameter "height"

    .prologue
    .line 6925
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 6926
    .local v1, yMove:I
    move v0, v1

    .line 6927
    .local v0, nextYMove:I
    if-lez v1, :cond_1

    .line 6928
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    if-le v1, v2, :cond_0

    .line 6929
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    sub-int/2addr v1, v2

    .line 6934
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    .line 6935
    return v1

    .line 6931
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    if-ge v1, v2, :cond_0

    .line 6932
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scrollEditIntoView()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 5924
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0, v9}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5928
    .local v5, visibleRect:Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5981
    :cond_0
    :goto_0
    return-void

    .line 5931
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 5932
    iget v6, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget v7, p0, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    invoke-static {v6, v7, v5}, Landroid/webkit/WebViewClassic;->nativeFindMaxVisibleRect(IILandroid/graphics/Rect;)V

    .line 5933
    const/4 v6, 0x1

    const/16 v7, 0xa

    invoke-direct {p0, v7}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5934
    .local v0, buffer:I
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v0

    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v0

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5939
    .local v4, showRect:Landroid/graphics/Rect;
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->calculateCaretTop()Landroid/graphics/Point;

    move-result-object v1

    .line 5940
    .local v1, caretTop:Landroid/graphics/Point;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 5942
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    if-ge v6, v7, :cond_6

    .line 5943
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 5944
    iget v6, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 5950
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 5952
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_7

    .line 5953
    iget v6, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 5954
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 5961
    :cond_3
    :goto_2
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5965
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v2

    .line 5966
    .local v2, scrollX:I
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_8

    .line 5968
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 5973
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v3

    .line 5974
    .local v3, scrollY:I
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_9

    .line 5975
    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 5980
    :cond_5
    :goto_4
    invoke-direct {p0, v2, v3, v11}, Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V

    goto/16 :goto_0

    .line 5946
    .end local v2           #scrollX:I
    .end local v3           #scrollY:I
    :cond_6
    iget v6, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 5947
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 5956
    :cond_7
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 5957
    iget v6, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 5969
    .restart local v2       #scrollX:I
    :cond_8
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_4

    .line 5971
    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    add-int/2addr v2, v6

    goto :goto_3

    .line 5976
    .restart local v3       #scrollY:I
    :cond_9
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_5

    .line 5977
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    add-int/2addr v3, v6

    goto :goto_4
.end method

.method private scrollEditText(II)V
    .locals 6
    .parameter "scrollX"
    .parameter "scrollY"

    .prologue
    .line 8409
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v2

    int-to-float v0, v2

    .line 8410
    .local v0, maxScrollX:F
    int-to-float v2, p1

    div-float v1, v2, v0

    .line 8411
    .local v1, scrollPercentX:F
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    neg-int v3, p1

    neg-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 8412
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v3, v4, p2, v5}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V

    .line 8414
    return-void
.end method

.method private scrollEditWithCursor()V
    .locals 19

    .prologue
    .line 6559
    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_0

    .line 6560
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v13

    .line 6561
    .local v13, x:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/webkit/WebViewClassic;->getTextScrollSpeed(III)F

    move-result v7

    .line 6563
    .local v7, scrollSpeedX:F
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v14

    .line 6564
    .local v14, y:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/webkit/WebViewClassic;->getTextScrollSpeed(III)F

    move-result v8

    .line 6566
    .local v8, scrollSpeedY:F
    const/4 v15, 0x0

    cmpl-float v15, v7, v15

    if-nez v15, :cond_1

    const/4 v15, 0x0

    cmpl-float v15, v8, v15

    if-nez v15, :cond_1

    .line 6567
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->endScrollEdit()V

    .line 6594
    .end local v7           #scrollSpeedX:F
    .end local v8           #scrollSpeedY:F
    .end local v13           #x:I
    .end local v14           #y:I
    :cond_0
    :goto_0
    return-void

    .line 6569
    .restart local v7       #scrollSpeedX:F
    .restart local v8       #scrollSpeedY:F
    .restart local v13       #x:I
    .restart local v14       #y:I
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 6570
    .local v1, currentTime:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    sub-long v11, v1, v15

    .line 6571
    .local v11, timeSinceLastUpdate:J
    invoke-static {v7, v11, v12}, Landroid/webkit/WebViewClassic;->getTextScrollDelta(FJ)I

    move-result v5

    .line 6572
    .local v5, deltaX:I
    invoke-static {v8, v11, v12}, Landroid/webkit/WebViewClassic;->getTextScrollDelta(FJ)I

    move-result v6

    .line 6573
    .local v6, deltaY:I
    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    .line 6574
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    .line 6576
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x95

    const-wide/16 v17, 0x10

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 6579
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v15

    add-int v9, v15, v5

    .line 6580
    .local v9, scrollX:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v15

    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 6581
    const/4 v15, 0x0

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 6582
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v15

    add-int v10, v15, v6

    .line 6583
    .local v10, scrollY:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v15

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 6584
    const/4 v15, 0x0

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 6585
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/webkit/WebViewClassic;->scrollEditText(II)V

    .line 6586
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v3, v15, Landroid/graphics/Point;->x:I

    .line 6587
    .local v3, cursorX:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v4, v15, Landroid/graphics/Point;->y:I

    .line 6588
    .local v4, cursorY:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    sub-int v16, v13, v5

    sub-int v17, v14, v6

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Point;->set(II)V

    .line 6589
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->updateWebkitSelection()V

    .line 6590
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    invoke-virtual {v15, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method private scrollLayerTo(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4111
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, p1

    .line 4112
    .local v0, dx:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, p2

    .line 4113
    .local v1, dy:I
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_2

    .line 4141
    :cond_1
    :goto_0
    return-void

    .line 4116
    :cond_2
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v2, :cond_6

    .line 4117
    iget v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftLayerId:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    if-ne v2, v3, :cond_3

    .line 4118
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    .line 4119
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/webkit/QuadF;->offset(FF)V

    .line 4121
    :cond_3
    iget v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightLayerId:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    if-ne v2, v3, :cond_4

    .line 4122
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    .line 4123
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/webkit/QuadF;->offset(FF)V

    .line 4129
    :cond_4
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    if-ne v2, v3, :cond_5

    .line 4131
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4132
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v2}, Landroid/webkit/AutoCompletePopup;->resetRect()V

    .line 4134
    :cond_5
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    invoke-direct {p0, v2, v3, p1, p2}, Landroid/webkit/WebViewClassic;->nativeScrollLayer(IIII)Z

    .line 4135
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iput p1, v2, Landroid/graphics/Rect;->left:I

    .line 4136
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iput p2, v2, Landroid/graphics/Rect;->top:I

    .line 4137
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xc6

    iget v4, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    .line 4139
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/webkit/WebView$PrivateAccess;->onScrollChanged(IIII)V

    .line 4140
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto :goto_0

    .line 4125
    :cond_6
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v2

    if-lez v2, :cond_4

    .line 4127
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_1
.end method

.method private sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 8815
    const/4 v0, 0x0

    .line 8816
    .local v0, direction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 8833
    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 8835
    const/4 v0, 0x0

    .line 8837
    :cond_0
    const/16 v1, 0x68

    .line 8838
    .local v1, eventHubAction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 8839
    const/16 v1, 0x67

    .line 8840
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/WebViewClassic;->keyCodeToSoundsEffect(I)I

    move-result v2

    .line 8841
    .local v2, sound:I
    if-eqz v2, :cond_1

    .line 8842
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 8845
    .end local v2           #sound:I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3, p1}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 8846
    return-void

    .line 8818
    .end local v1           #eventHubAction:I
    :sswitch_0
    const/16 v0, 0x82

    .line 8819
    goto :goto_0

    .line 8821
    :sswitch_1
    const/16 v0, 0x21

    .line 8822
    goto :goto_0

    .line 8824
    :sswitch_2
    const/16 v0, 0x11

    .line 8825
    goto :goto_0

    .line 8827
    :sswitch_3
    const/16 v0, 0x42

    .line 8828
    goto :goto_0

    .line 8830
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 8816
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private setContentScrollBy(IIZ)Z
    .locals 3
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 4189
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v2, :cond_1

    .line 4213
    :cond_0
    :goto_0
    return v1

    .line 4196
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result p1

    .line 4197
    invoke-virtual {p0, p2}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result p2

    .line 4198
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-eqz v2, :cond_3

    .line 4200
    if-eqz p2, :cond_2

    .line 4201
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4202
    .local v0, tempRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 4203
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 4204
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 4211
    .end local v0           #tempRect:Landroid/graphics/Rect;
    :cond_2
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v1, p3, v1}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 4213
    :cond_3
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v1

    goto :goto_0
.end method

.method private setFindIsUp(Z)V
    .locals 0
    .parameter "isUp"

    .prologue
    .line 3910
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mFindIsUp:Z

    .line 3911
    return-void
.end method

.method private setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    .locals 2
    .parameter "hit"

    .prologue
    .line 8047
    if-nez p1, :cond_0

    .line 8048
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    .line 8075
    :goto_0
    return-void

    .line 8051
    :cond_0
    new-instance v0, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v0}, Landroid/webkit/WebView$HitTestResult;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    .line 8052
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8053
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->setHitTestTypeFromUrl(Ljava/lang/String;)V

    .line 8054
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 8056
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 8057
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    iget-object v1, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    .line 8059
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    iget-object v1, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setImageAnchorUrlExtra(Ljava/lang/String;)V

    .line 8061
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    iget-object v1, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setmImageTitle(Ljava/lang/String;)V

    .line 8073
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setTouchHighlightRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 8064
    :cond_2
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 8065
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 8066
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    iget-object v1, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    goto :goto_1

    .line 8067
    :cond_3
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mEditable:Z

    if-eqz v0, :cond_4

    .line 8068
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    goto :goto_1

    .line 8069
    :cond_4
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8070
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->setHitTestTypeFromUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setHitTestTypeFromUrl(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 8023
    const/4 v1, 0x0

    .line 8024
    .local v1, substr:Ljava/lang/String;
    const-string v2, "geo:0,0?q="

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8025
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 8026
    const-string v2, "geo:0,0?q="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 8039
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 8044
    :goto_1
    return-void

    .line 8027
    :cond_0
    const-string/jumbo v2, "tel:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8028
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 8029
    const-string/jumbo v2, "tel:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8030
    :cond_1
    const-string/jumbo v2, "mailto:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8031
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 8032
    const-string/jumbo v2, "mailto:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8034
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 8035
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    goto :goto_1

    .line 8040
    :catch_0
    move-exception v0

    .line 8041
    .local v0, e:Ljava/lang/Throwable;
    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode URL! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8042
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    goto :goto_1
.end method

.method public static setShouldMonitorWebCoreThread()V
    .locals 0

    .prologue
    .line 8996
    invoke-static {}, Landroid/webkit/WebViewCore;->setShouldMonitorWebCoreThread()V

    .line 8997
    return-void
.end method

.method private setTouchHighlightRects(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    .locals 14
    .parameter "hit"

    .prologue
    .line 8177
    const/4 v7, 0x0

    .line 8178
    .local v7, transition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->shouldAnimateTo(Landroid/webkit/WebViewCore$WebKitHitTest;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 8179
    new-instance v7, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    .end local v7           #transition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    invoke-direct {v7, p0}, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;-><init>(Landroid/webkit/WebViewClassic;)V

    .line 8181
    .restart local v7       #transition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    :cond_0
    if-eqz p1, :cond_5

    iget-object v6, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    .line 8182
    .local v6, rects:[Landroid/graphics/Rect;
    :goto_0
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v9}, Landroid/graphics/Region;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 8183
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v10}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 8184
    if-eqz v7, :cond_1

    .line 8185
    new-instance v9, Landroid/graphics/Region;

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-direct {v9, v10}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v9, v7, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;->mPreviousRegion:Landroid/graphics/Region;

    .line 8187
    :cond_1
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v9}, Landroid/graphics/Region;->setEmpty()V

    .line 8189
    :cond_2
    if-eqz v6, :cond_8

    .line 8192
    const-string v9, "browser_text_selection"

    invoke-direct {p0, v9}, Landroid/webkit/WebViewClassic;->getThemeColor(Ljava/lang/String;)I

    move-result v2

    .line 8193
    .local v2, color:I
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_6

    .end local v2           #color:I
    :goto_1
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8198
    move-object v1, v6

    .local v1, arr$:[Landroid/graphics/Rect;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_7

    aget-object v5, v1, v3

    .line 8199
    .local v5, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 8204
    .local v8, viewRect:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v10

    shr-int/lit8 v10, v10, 0x1

    if-lt v9, v10, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v10

    shr-int/lit8 v10, v10, 0x1

    if-ge v9, v10, :cond_4

    .line 8206
    :cond_3
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v8}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 8198
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8181
    .end local v1           #arr$:[Landroid/graphics/Rect;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #rect:Landroid/graphics/Rect;
    .end local v6           #rects:[Landroid/graphics/Rect;
    .end local v8           #viewRect:Landroid/graphics/Rect;
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 8193
    .restart local v2       #color:I
    .restart local v6       #rects:[Landroid/graphics/Rect;
    :cond_6
    iget v2, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mTapHighlightColor:I

    goto :goto_1

    .line 8212
    .end local v2           #color:I
    .restart local v1       #arr$:[Landroid/graphics/Rect;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_7
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v10}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 8213
    if-eqz v7, :cond_8

    iget-object v9, v7, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;->mPreviousRegion:Landroid/graphics/Region;

    if-eqz v9, :cond_8

    .line 8214
    new-instance v9, Landroid/graphics/Region;

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-direct {v9, v10}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v9, v7, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;->mNewRegion:Landroid/graphics/Region;

    .line 8215
    iput-object v7, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    .line 8216
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    const-string/jumbo v10, "progress"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 8218
    .local v0, animator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 8221
    .end local v0           #animator:Landroid/animation/ObjectAnimator;
    .end local v1           #arr$:[Landroid/graphics/Rect;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_8
    return-void
.end method

.method private setupPackageListener(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1673
    const-class v4, Landroid/webkit/WebViewClassic;

    monitor-enter v4

    .line 1677
    :try_start_0
    sget-boolean v3, Landroid/webkit/WebViewClassic;->sPackageInstallationReceiverAdded:Z

    if-eqz v3, :cond_0

    .line 1678
    monitor-exit v4

    .line 1717
    :goto_0
    return-void

    .line 1681
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1682
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1683
    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1684
    new-instance v1, Landroid/webkit/WebViewClassic$PackageListener;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/webkit/WebViewClassic$PackageListener;-><init>(Landroid/webkit/WebViewClassic$1;)V

    .line 1685
    .local v1, packageListener:Landroid/content/BroadcastReceiver;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1686
    const/4 v3, 0x1

    sput-boolean v3, Landroid/webkit/WebViewClassic;->sPackageInstallationReceiverAdded:Z

    .line 1687
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1690
    new-instance v2, Landroid/webkit/WebViewClassic$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebViewClassic$1;-><init>(Landroid/webkit/WebViewClassic;)V

    .line 1716
    .local v2, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1687
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #packageListener:Landroid/content/BroadcastReceiver;
    .end local v2           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static declared-synchronized setupProxyListener(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1590
    const-class v3, Landroid/webkit/WebViewClassic;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/webkit/WebViewClassic;->sNotificationsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1601
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 1593
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1594
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1595
    new-instance v2, Landroid/webkit/WebViewClassic$ProxyReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/webkit/WebViewClassic$ProxyReceiver;-><init>(Landroid/webkit/WebViewClassic$1;)V

    sput-object v2, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

    .line 1596
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 1598
    .local v0, currentProxy:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1599
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->handleProxyBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1590
    .end local v0           #currentProxy:Landroid/content/Intent;
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static setupTrustStorageListener(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1559
    sget-object v2, Landroid/webkit/WebViewClassic;->sTrustStorageListener:Landroid/webkit/WebViewClassic$TrustStorageListener;

    if-eqz v2, :cond_1

    .line 1570
    :cond_0
    :goto_0
    return-void

    .line 1562
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1563
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1564
    new-instance v2, Landroid/webkit/WebViewClassic$TrustStorageListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/webkit/WebViewClassic$TrustStorageListener;-><init>(Landroid/webkit/WebViewClassic$1;)V

    sput-object v2, Landroid/webkit/WebViewClassic;->sTrustStorageListener:Landroid/webkit/WebViewClassic$TrustStorageListener;

    .line 1565
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewClassic;->sTrustStorageListener:Landroid/webkit/WebViewClassic$TrustStorageListener;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 1567
    .local v0, current:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1568
    invoke-static {}, Landroid/webkit/WebViewClassic;->handleCertTrustChanged()V

    goto :goto_0
.end method

.method private setupWebkitSelect()Z
    .locals 1

    .prologue
    .line 5516
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 5517
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->startSelectActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5518
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 5519
    const/4 v0, 0x0

    .line 5523
    :goto_0
    return v0

    .line 5521
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->startSelectingText()V

    .line 5522
    const/4 v0, 0x3

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 5523
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldAnimateTo(Landroid/webkit/WebViewCore$WebKitHitTest;)Z
    .locals 1
    .parameter "hit"

    .prologue
    .line 8173
    const/4 v0, 0x0

    return v0
.end method

.method private shouldDrawHighlightRect()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8078
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    if-nez v1, :cond_1

    .line 8090
    :cond_0
    :goto_0
    return v0

    .line 8081
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8084
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mHasFocus:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8085
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mEditable:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 8087
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mHasFocus:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mEditable:Z

    if-nez v1, :cond_0

    .line 8090
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z

    goto :goto_0
.end method

.method private showPasteWindow()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5398
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ClipboardManager;

    move-object v0, v6

    check-cast v0, Landroid/content/ClipboardManager;

    .line 5400
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5401
    new-instance v1, Landroid/graphics/Point;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v7

    invoke-direct {v1, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 5403
    .local v1, cursorPoint:Landroid/graphics/Point;
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->calculateCaretTop()Landroid/graphics/Point;

    move-result-object v2

    .line 5404
    .local v2, cursorTop:Landroid/graphics/Point;
    iget v6, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v6

    iget v7, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 5407
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 5408
    .local v3, location:[I
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 5409
    aget v6, v3, v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v7

    sub-int v4, v6, v7

    .line 5410
    .local v4, offsetX:I
    aget v6, v3, v9

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int v5, v6, v7

    .line 5411
    .local v5, offsetY:I
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Point;->offset(II)V

    .line 5412
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->offset(II)V

    .line 5413
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

    if-nez v6, :cond_0

    .line 5414
    new-instance v6, Landroid/webkit/WebViewClassic$PastePopupWindow;

    invoke-direct {v6, p0}, Landroid/webkit/WebViewClassic$PastePopupWindow;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v6, p0, Landroid/webkit/WebViewClassic;->mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

    .line 5416
    :cond_0
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

    aget v7, v3, v8

    aget v8, v3, v9

    invoke-virtual {v6, v1, v2, v7, v8}, Landroid/webkit/WebViewClassic$PastePopupWindow;->show(Landroid/graphics/Point;Landroid/graphics/Point;II)V

    .line 5418
    .end local v1           #cursorPoint:Landroid/graphics/Point;
    .end local v2           #cursorTop:Landroid/graphics/Point;
    .end local v3           #location:[I
    .end local v4           #offsetX:I
    .end local v5           #offsetY:I
    :cond_1
    return-void
.end method

.method private snapDraggingCursor()V
    .locals 9

    .prologue
    .line 6737
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v7, v7, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v8, v8, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewClassic;->scaleAlongSegment(IILandroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    .line 6741
    .local v2, scale:F
    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 6742
    const/high16 v5, 0x3f80

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 6743
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v5, v5, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v6, v6, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v5, v6}, Landroid/webkit/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v0

    .line 6745
    .local v0, newX:F
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v5, v5, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v6, v6, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v5, v6}, Landroid/webkit/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v1

    .line 6747
    .local v1, newY:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 6748
    .local v3, x:I
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 6749
    .local v4, y:I
    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v5, :cond_0

    .line 6750
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 6752
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 6755
    :cond_0
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 6756
    return-void
.end method

.method private startDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6606
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 6608
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6609
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 6611
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHorizontalScrollBarMode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mVerticalScrollBarMode:I

    if-eq v0, v1, :cond_1

    .line 6613
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->invokeZoomPicker()V

    .line 6615
    :cond_1
    return-void
.end method

.method private startPrivateBrowsing()V
    .locals 2

    .prologue
    .line 2806
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettingsClassic;->setPrivateBrowsingEnabled(Z)V

    .line 2807
    return-void
.end method

.method private startScrollingLayer(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 6082
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_1

    .line 6092
    :cond_0
    :goto_0
    return-void

    .line 6085
    :cond_1
    float-to-int v0, p1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v2

    .line 6086
    .local v2, contentX:I
    float-to-int v0, p2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v3

    .line 6087
    .local v3, contentY:I
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerBounds:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->nativeScrollableLayer(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    .line 6089
    iget v0, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    if-eqz v0, :cond_0

    .line 6090
    const/16 v0, 0x9

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto :goto_0
.end method

.method private startSelectActionMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5384
    new-instance v0, Landroid/webkit/SelectActionModeCallback;

    invoke-direct {v0}, Landroid/webkit/SelectActionModeCallback;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    .line 5385
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/webkit/SelectActionModeCallback;->setTextSelected(Z)V

    .line 5386
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0, p0}, Landroid/webkit/SelectActionModeCallback;->setWebView(Landroid/webkit/WebViewClassic;)V

    .line 5387
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5390
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 5394
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 5385
    goto :goto_0

    .line 5393
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->performHapticFeedback(I)Z

    move v2, v1

    .line 5394
    goto :goto_1
.end method

.method private startSelectingText()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 4848
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    .line 4849
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    .line 4850
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xff

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 4851
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 4852
    return-void
.end method

.method private startTouch(FFJ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 6598
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    iput v0, p0, Landroid/webkit/WebViewClassic;->mStartTouchX:I

    .line 6599
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    iput v0, p0, Landroid/webkit/WebViewClassic;->mStartTouchY:I

    .line 6600
    iput-wide p3, p0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    .line 6601
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6602
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 6603
    return-void
.end method

.method private stopTouch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6682
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 6685
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 6686
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6687
    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 6693
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 6694
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6695
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6699
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_3

    .line 6700
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v0}, Landroid/webkit/OverScrollGlow;->releaseAll()V

    .line 6703
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_5

    .line 6704
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 6705
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 6706
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v0, :cond_4

    .line 6707
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->resetCaretTimer()V

    .line 6709
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 6711
    :cond_5
    return-void
.end method

.method private syncSelectionCursors()V
    .locals 4

    .prologue
    .line 5468
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->nativeGetHandleLayerId(IILandroid/graphics/Point;Landroid/webkit/QuadF;)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftLayerId:I

    .line 5471
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->nativeGetHandleLayerId(IILandroid/graphics/Point;Landroid/webkit/QuadF;)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightLayerId:I

    .line 5474
    return-void
.end method

.method private updateHwAccelerated()V
    .locals 4

    .prologue
    .line 8923
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_1

    .line 8937
    :cond_0
    :goto_0
    return-void

    .line 8926
    :cond_1
    const/4 v0, 0x0

    .line 8927
    .local v0, hwAccelerated:Z
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getLayerType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 8929
    const/4 v0, 0x1

    .line 8933
    :cond_2
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v2, v0}, Landroid/webkit/WebViewClassic;->nativeSetHwAccelerated(IZ)I

    move-result v1

    .line 8934
    .local v1, result:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 8935
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->contentDraw()V

    goto :goto_0
.end method

.method private updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 4
    .parameter "nodePointer"
    .parameter "textGeneration"
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    .line 8364
    iget v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    if-ne p2, v1, :cond_0

    .line 8365
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    if-ne v1, p1, :cond_0

    .line 8366
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v3, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 8369
    :cond_0
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectTextPtr:I

    invoke-static {v1, v2}, Landroid/webkit/WebViewClassic;->nativeSetTextSelection(II)V

    .line 8371
    iget v1, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectionReason:I

    if-eq v1, v0, :cond_1

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v1, :cond_2

    iget v1, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    if-eq v1, v2, :cond_2

    iget v1, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectionReason:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 8374
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 8375
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    .line 8376
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 8405
    :goto_0
    return-void

    .line 8380
    :cond_2
    iget v1, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectTextPtr:I

    if-eqz v1, :cond_a

    iget v1, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    if-ne v1, p1, :cond_a

    iget v1, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    if-eqz v1, :cond_a

    .line 8383
    :cond_3
    iget v1, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    if-ne v1, v2, :cond_6

    :goto_1
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    .line 8384
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 8388
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 8404
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto :goto_0

    .line 8383
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 8390
    :cond_7
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_8

    .line 8391
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->setupWebkitSelect()Z

    .line 8397
    :goto_3
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v0, :cond_5

    .line 8398
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->resetCaretTimer()V

    goto :goto_2

    .line 8392
    :cond_8
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-nez v0, :cond_9

    .line 8393
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    goto :goto_3

    .line 8395
    :cond_9
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->adjustSelectionCursors()V

    goto :goto_3

    .line 8402
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_2
.end method

.method private updateWebkitSelection()V
    .locals 5

    .prologue
    const/16 v4, 0xd5

    .line 5527
    const/4 v0, 0x0

    .line 5528
    .local v0, handles:[I
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v1, :cond_0

    .line 5529
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 5531
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v1, :cond_1

    .line 5532
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 5533
    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 5537
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 5538
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v4, v0}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 5539
    return-void

    .line 5535
    :cond_1
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/webkit/WebViewClassic;->nativeSetTextSelection(II)V

    goto :goto_0
.end method

.method private viewInvalidate()V
    .locals 0

    .prologue
    .line 8791
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 8792
    return-void
.end method

.method private viewInvalidate(IIII)V
    .locals 8
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3148
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    .line 3149
    .local v1, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    .line 3150
    .local v0, dy:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    int-to-float v3, p1

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v4, p2

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v4, v0

    int-to-float v5, p3

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-float v6, p4

    mul-float/2addr v6, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->invalidate(IIII)V

    .line 3154
    return-void
.end method

.method private viewInvalidateDelayed(JIIII)V
    .locals 9
    .parameter "delay"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3159
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v8

    .line 3160
    .local v8, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v7

    .line 3161
    .local v7, dy:I
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    int-to-float v1, p3

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v3, v1

    int-to-float v1, p4

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int v4, v1, v7

    int-to-float v1, p5

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v5, v1

    int-to-float v1, p6

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int v6, v1, v7

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 3166
    return-void
.end method

.method private viewToContentDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 3063
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private viewToContentVisibleRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "contentRect"
    .parameter "viewRect"

    .prologue
    .line 5865
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentXf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 5870
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentYf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScaleY()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 5872
    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentXf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 5873
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentYf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScaleY()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 5874
    return-void
.end method

.method private viewToContentXf(I)F
    .locals 2
    .parameter "x"

    .prologue
    .line 3088
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private viewToContentYf(I)F
    .locals 2
    .parameter "y"

    .prologue
    .line 3097
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "object"
    .parameter "name"

    .prologue
    .line 4389
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkit/WebViewClassic;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 4390
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3
    .parameter "object"
    .parameter "name"
    .parameter "requireAnnotation"

    .prologue
    .line 4396
    if-nez p1, :cond_0

    .line 4404
    :goto_0
    return-void

    .line 4399
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 4400
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    .line 4401
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 4402
    iput-boolean p3, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mRequireAnnotation:Z

    .line 4403
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method adjustDefaultZoomDensity(I)V
    .locals 3
    .parameter "zoomDensity"

    .prologue
    .line 1873
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 1875
    .local v0, density:F
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->updateDefaultZoomDensity(F)V

    .line 1876
    return-void
.end method

.method autoFillForm(I)V
    .locals 3
    .parameter "autoFillQueryId"

    .prologue
    .line 8897
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x94

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8899
    return-void
.end method

.method public canGoBack()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2719
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2720
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2721
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2722
    monitor-exit v0

    .line 2724
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 2726
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canGoBackOrForward(I)Z
    .locals 4
    .parameter "steps"

    .prologue
    const/4 v2, 0x0

    .line 2765
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2766
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2767
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2768
    monitor-exit v0

    .line 2771
    :goto_0
    return v2

    .line 2770
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v3

    add-int v1, v3, p1

    .line 2771
    .local v1, newIndex:I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 2773
    .end local v1           #newIndex:I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public canGoForward()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2742
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2743
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2744
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2745
    monitor-exit v0

    .line 2747
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 2749
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canZoomIn()Z
    .locals 1

    .prologue
    .line 7226
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1

    .prologue
    .line 7234
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 2

    .prologue
    .line 2881
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2888
    :cond_0
    :goto_0
    return-object v0

    .line 2882
    :cond_1
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 2885
    .local v0, result:Landroid/graphics/Picture;
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsBenchmarkApp:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2886
    :cond_2
    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeCopyBaseContentToPicture(Landroid/graphics/Picture;)V

    goto :goto_0
.end method

.method centerFitRect(Landroid/graphics/Rect;)V
    .locals 27
    .parameter "rect"

    .prologue
    .line 7279
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 7280
    .local v17, rectWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 7281
    .local v12, rectHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v20

    .line 7282
    .local v20, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v19

    .line 7283
    .local v19, viewHeight:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v12

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 7285
    .local v18, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v18

    .line 7286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v23

    if-nez v23, :cond_0

    .line 7287
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    div-int/lit8 v24, v17, 0x2

    add-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v23

    div-int/lit8 v24, v20, 0x2

    sub-int v23, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    div-int/lit8 v25, v12, 0x2

    add-int v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v24

    div-int/lit8 v25, v19, 0x2

    sub-int v24, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    .line 7322
    :goto_0
    return-void

    .line 7291
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v5

    .line 7292
    .local v5, actualScale:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v10, v23, v24

    .line 7293
    .local v10, oldScreenX:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v15, v23, v18

    .line 7294
    .local v15, rectViewX:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v14, v23, v18

    .line 7295
    .local v14, rectViewWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v7, v23, v18

    .line 7296
    .local v7, newMaxWidth:F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v14

    const/high16 v24, 0x4000

    div-float v8, v23, v24

    .line 7298
    .local v8, newScreenX:F
    cmpl-float v23, v8, v15

    if-lez v23, :cond_3

    .line 7299
    move v8, v15

    .line 7303
    :cond_1
    :goto_1
    mul-float v23, v10, v18

    mul-float v24, v8, v5

    sub-float v23, v23, v24

    sub-float v24, v18, v5

    div-float v21, v23, v24

    .line 7305
    .local v21, zoomCenterX:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v11, v23, v24

    .line 7307
    .local v11, oldScreenY:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v16, v23, v24

    .line 7308
    .local v16, rectViewY:F
    int-to-float v0, v12

    move/from16 v23, v0

    mul-float v13, v23, v18

    .line 7309
    .local v13, rectViewHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v6, v23, v24

    .line 7310
    .local v6, newMaxHeight:F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v13

    const/high16 v24, 0x4000

    div-float v9, v23, v24

    .line 7312
    .local v9, newScreenY:F
    cmpl-float v23, v9, v16

    if-lez v23, :cond_4

    .line 7313
    move/from16 v9, v16

    .line 7317
    :cond_2
    :goto_2
    mul-float v23, v11, v18

    mul-float v24, v9, v5

    sub-float v23, v23, v24

    sub-float v24, v18, v5

    div-float v22, v23, v24

    .line 7319
    .local v22, zoomCenterY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 7320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    goto/16 :goto_0

    .line 7300
    .end local v6           #newMaxHeight:F
    .end local v9           #newScreenY:F
    .end local v11           #oldScreenY:F
    .end local v13           #rectViewHeight:F
    .end local v16           #rectViewY:F
    .end local v21           #zoomCenterX:F
    .end local v22           #zoomCenterY:F
    :cond_3
    sub-float v23, v7, v15

    sub-float v23, v23, v14

    cmpl-float v23, v8, v23

    if-lez v23, :cond_1

    .line 7301
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v7, v15

    sub-float v8, v23, v24

    goto/16 :goto_1

    .line 7314
    .restart local v6       #newMaxHeight:F
    .restart local v9       #newScreenY:F
    .restart local v11       #oldScreenY:F
    .restart local v13       #rectViewHeight:F
    .restart local v16       #rectViewY:F
    .restart local v21       #zoomCenterX:F
    :cond_4
    sub-float v23, v6, v16

    sub-float v23, v23, v13

    cmpl-float v23, v9, v23

    if-lez v23, :cond_2

    .line 7315
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v6, v16

    sub-float v9, v23, v24

    goto :goto_2
.end method

.method public clearCache(Z)V
    .locals 4
    .parameter "includeDiskFiles"

    .prologue
    const/4 v1, 0x0

    .line 3747
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x6f

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3749
    return-void

    :cond_0
    move v0, v1

    .line 3747
    goto :goto_0
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 3756
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v0, :cond_0

    .line 3757
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v0}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 3759
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 3766
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->setClearPending()V

    .line 3767
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3768
    return-void
.end method

.method public clearMatches()V
    .locals 3

    .prologue
    const/16 v2, 0xdd

    .line 3974
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    .line 3978
    :goto_0
    return-void

    .line 3976
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 3977
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 2

    .prologue
    .line 3775
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3776
    return-void
.end method

.method public clearView()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2870
    iput v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    .line 2871
    iput v0, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    .line 2872
    invoke-virtual {p0, v0, v0, v0}, Landroid/webkit/WebViewClassic;->setBaseLayer(IZZ)V

    .line 2873
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2874
    return-void
.end method

.method public clearViewState()V
    .locals 1

    .prologue
    .line 2507
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    .line 2508
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    .line 2509
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 2510
    return-void
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 3447
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 4

    .prologue
    .line 3431
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v1

    .line 3434
    .local v1, range:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    .line 3435
    .local v2, scrollX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v0

    .line 3436
    .local v0, overscrollRight:I
    if-gez v2, :cond_1

    .line 3437
    sub-int/2addr v1, v2

    .line 3442
    :cond_0
    :goto_0
    return v1

    .line 3438
    :cond_1
    if-le v2, v0, :cond_0

    .line 3439
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method computeMaxScrollX()I
    .locals 2

    .prologue
    .line 7029
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method computeMaxScrollY()I
    .locals 2

    .prologue
    .line 7037
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method computeReadingLevelScale(F)F
    .locals 1
    .parameter "scale"

    .prologue
    .line 2905
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->computeReadingLevelScale(F)F

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    const/16 v8, 0xa

    const/16 v1, 0x9

    const/4 v9, 0x0

    const/4 v2, -0x1

    .line 4030
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4031
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    .line 4032
    .local v3, oldX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    .line 4033
    .local v4, oldY:I
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 4034
    .local v10, x:I
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 4035
    .local v11, y:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 4037
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4038
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v5

    .line 4039
    .local v5, rangeX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v6

    .line 4040
    .local v6, rangeY:I
    iget v7, p0, Landroid/webkit/WebViewClassic;->mOverflingDistance:I

    .line 4043
    .local v7, overflingDistance:I
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    if-ne v0, v1, :cond_4

    .line 4044
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 4045
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 4046
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 4047
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 4049
    const/4 v7, 0x0

    .line 4059
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsBenchmarkApp:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    if-le v10, v2, :cond_1

    if-ge v10, v5, :cond_1

    if-le v11, v2, :cond_1

    if-lt v11, v6, :cond_2

    :cond_1
    const/4 v0, 0x2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 4065
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, v10, v11}, Landroid/webkit/WebView$PrivateAccess;->super_scrollTo(II)V

    .line 4073
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_3

    .line 4074
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move v1, v10

    move v2, v11

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/OverScrollGlow;->absorbGlow(IIIIII)V

    .line 4108
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    .end local v7           #overflingDistance:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_3
    :goto_2
    return-void

    .line 4050
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v5       #rangeX:I
    .restart local v6       #rangeY:I
    .restart local v7       #overflingDistance:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_4
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    if-ne v0, v8, :cond_0

    .line 4051
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v3

    .line 4052
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v4

    .line 4053
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v5

    .line 4054
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v6

    .line 4055
    const/4 v7, 0x0

    goto :goto_0

    .line 4067
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    sub-int v1, v10, v3

    sub-int v2, v11, v4

    move v8, v7

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView$PrivateAccess;->overScrollBy(IIIIIIIIZ)V

    goto :goto_1

    .line 4077
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    .end local v7           #overflingDistance:I
    :cond_6
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    if-ne v0, v1, :cond_9

    .line 4079
    invoke-direct {p0, v10, v11}, Landroid/webkit/WebViewClassic;->scrollLayerTo(II)V

    .line 4086
    :goto_3
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->abortAnimation()V

    .line 4088
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_b

    .line 4089
    invoke-direct {p0, v9}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 4095
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_7

    .line 4096
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 4097
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_7

    .line 4098
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4101
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    if-ne v3, v0, :cond_8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    if-eq v4, v0, :cond_3

    .line 4102
    :cond_8
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_2

    .line 4080
    :cond_9
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    if-ne v0, v8, :cond_a

    .line 4081
    invoke-direct {p0, v10, v11}, Landroid/webkit/WebViewClassic;->scrollEditText(II)V

    goto :goto_3

    .line 4083
    :cond_a
    invoke-virtual {p0, v10}, Landroid/webkit/WebViewClassic;->setScrollXRaw(I)V

    .line 4084
    invoke-virtual {p0, v11}, Landroid/webkit/WebViewClassic;->setScrollYRaw(I)V

    goto :goto_3

    .line 4091
    :cond_b
    const-string/jumbo v0, "webkit/webview"

    const-string v1, "computeScroll: mNativeClass=0"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4106
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_c
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0}, Landroid/webkit/WebView$PrivateAccess;->super_computeScroll()V

    goto :goto_2
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 3482
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 3477
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 3461
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v1

    .line 3464
    .local v1, range:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    .line 3465
    .local v2, scrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v0

    .line 3466
    .local v0, overscrollBottom:I
    if-gez v2, :cond_1

    .line 3467
    sub-int/2addr v1, v2

    .line 3472
    :cond_0
    :goto_0
    return v1

    .line 3468
    :cond_1
    if-le v2, v0, :cond_0

    .line 3469
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method protected contentInvalidateAll()V
    .locals 2

    .prologue
    .line 8907
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_0

    .line 8908
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 8910
    :cond_0
    return-void
.end method

.method contentToViewDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 3107
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method contentToViewX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 3115
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    return v0
.end method

.method contentToViewY(I)I
    .locals 2
    .parameter "y"

    .prologue
    .line 3123
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 3783
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelection()Z
    .locals 7

    .prologue
    .line 5597
    const/4 v1, 0x0

    .line 5598
    .local v1, copiedSomething:Z
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 5599
    .local v3, selection:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 5603
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const v5, 0x1040397

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 5606
    const/4 v1, 0x1

    .line 5607
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 5609
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 5610
    const/4 v4, 0x4

    new-array v2, v4, [I

    .line 5611
    .local v2, handles:[I
    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 5612
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0xd2

    invoke-virtual {v4, v5, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5614
    .end local v0           #cm:Landroid/content/ClipboardManager;
    .end local v2           #handles:[I
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 5615
    return v1
.end method

.method public cutSelection()V
    .locals 2

    .prologue
    .line 5624
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 5626
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v0, :cond_0

    .line 5627
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    .line 5635
    :cond_0
    return-void
.end method

.method public debugDump()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8863
    return-void
.end method

.method deleteSelection(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 4972
    iget v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    .line 4973
    new-instance v0, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2, v4}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(III)V

    .line 4975
    .local v0, data:Landroid/webkit/WebViewCore$TextSelectionData;
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x7a

    iget v3, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 4977
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 2173
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2174
    const-string/jumbo v0, "webview"

    const-string v1, "Error: WebView.destroy() called while still attached!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->ensureFunctorDetached()V

    .line 2177
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->destroyJava()V

    .line 2178
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->destroyNative()V

    .line 2179
    return-void
.end method

.method public discardAllTextures()V
    .locals 0

    .prologue
    .line 8914
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeDiscardAllTextures()V

    .line 8915
    return-void
.end method

.method dismissZoomControl()V
    .locals 1

    .prologue
    .line 7206
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 7207
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 5998
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6022
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView$PrivateAccess;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 6000
    :pswitch_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6006
    :pswitch_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 6007
    .local v0, location:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6010
    const/4 v1, 0x0

    goto :goto_1

    .line 6014
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 5998
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4381
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4382
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 4014
    if-nez p1, :cond_0

    .line 4018
    :goto_0
    return-void

    .line 4017
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method drawHistory()Z
    .locals 1

    .prologue
    .line 4938
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    return v0
.end method

.method public dumpDisplayTree()V
    .locals 1

    .prologue
    .line 5129
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeDumpDisplayTree(Ljava/lang/String;)V

    .line 5130
    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v1, 0x0

    .line 5139
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xaa

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5140
    return-void

    :cond_0
    move v0, v1

    .line 5139
    goto :goto_0
.end method

.method public dumpRenderTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v1, 0x0

    .line 5149
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xab

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5150
    return-void

    :cond_0
    move v0, v1

    .line 5149
    goto :goto_0
.end method

.method public emulateShiftHeld()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5555
    return-void
.end method

.method public enableEmailUsingFlag()V
    .locals 1

    .prologue
    .line 3298
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mEmailUsingFlag:Z

    .line 3299
    return-void
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4376
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4377
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4450
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4452
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4454
    return-void

    .line 4452
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .parameter "find"

    .prologue
    .line 3824
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->findAllBody(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "find"

    .prologue
    .line 3828
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->findAllBody(Ljava/lang/String;Z)I

    .line 3829
    return-void
.end method

.method public findNext(Z)V
    .locals 6
    .parameter "forward"

    .prologue
    const/4 v2, 0x0

    .line 3799
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v1, :cond_1

    .line 3817
    :cond_0
    :goto_0
    return-void

    .line 3800
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    if-eqz v1, :cond_0

    .line 3801
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xde

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-virtual {v3, v4, v1, v5}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    .line 3805
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mEmailUsingFlag:Z

    if-eqz v1, :cond_0

    .line 3806
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xe7

    iget v4, p0, Landroid/webkit/WebViewClassic;->mWidth:I

    iget v5, p0, Landroid/webkit/WebViewClassic;->mHeight:I

    invoke-virtual {v1, v3, v4, v5}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3808
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsOver:Z

    if-eqz v1, :cond_0

    .line 3809
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 3811
    .local v0, scrollview:Landroid/widget/ScrollView;
    iget v1, p0, Landroid/webkit/WebViewClassic;->mTopY:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 3812
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsOver:Z

    goto :goto_0

    .end local v0           #scrollview:Landroid/widget/ScrollView;
    :cond_2
    move v1, v2

    .line 3801
    goto :goto_1
.end method

.method public flingScroll(II)V
    .locals 11
    .parameter "vx"
    .parameter "vy"

    .prologue
    const/4 v5, 0x0

    .line 7081
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v8

    iget v9, p0, Landroid/webkit/WebViewClassic;->mOverflingDistance:I

    iget v10, p0, Landroid/webkit/WebViewClassic;->mOverflingDistance:I

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 7083
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 7084
    return-void
.end method

.method focusCandidateIsEditableText()Z
    .locals 1

    .prologue
    .line 8983
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v0, :cond_0

    .line 8984
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mEditable:Z

    .line 8986
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freeMemory()V
    .locals 2

    .prologue
    .line 3736
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3737
    return-void
.end method

.method getBaseLayer()I
    .locals 1

    .prologue
    .line 4788
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    .line 4789
    const/4 v0, 0x0

    .line 4791
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeGetBaseLayer(I)I

    move-result v0

    goto :goto_0
.end method

.method getBlockLeftEdge(IIF)I
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "readingScale"

    .prologue
    .line 2941
    const/high16 v6, 0x3f80

    div-float v1, v6, p3

    .line 2942
    .local v1, invReadingScale:F
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v4, v6

    .line 2943
    .local v4, readingWidth:I
    const/4 v2, -0x1

    .line 2944
    .local v2, left:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v6, :cond_1

    .line 2945
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v6, v6, Landroid/webkit/WebViewCore$WebKitHitTest;->mEnclosingParentRects:[Landroid/graphics/Rect;

    array-length v3, v6

    .line 2946
    .local v3, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 2947
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v6, v6, Landroid/webkit/WebViewCore$WebKitHitTest;->mEnclosingParentRects:[Landroid/graphics/Rect;

    aget-object v5, v6, v0

    .line 2948
    .local v5, rect:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget v7, v7, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestSlop:I

    if-ge v6, v7, :cond_0

    .line 2946
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2951
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v6, v4, :cond_2

    .line 2958
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 2959
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 2968
    .end local v0           #i:I
    .end local v3           #length:I
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_1
    return v2

    .line 2964
    .restart local v0       #i:I
    .restart local v3       #length:I
    .restart local v5       #rect:Landroid/graphics/Rect;
    :cond_2
    iget v2, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 2088
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 3590
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 3598
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDefaultZoomScale()F
    .locals 1

    .prologue
    .line 7210
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 3564
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3565
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    return v0
.end method

.method getHistoryPictureWidth()I
    .locals 1

    .prologue
    .line 4942
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 1

    .prologue
    .line 2934
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 2129
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabaseClassic;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3546
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3547
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPageBackgroundColor()I
    .locals 1

    .prologue
    .line 3602
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 3603
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeGetBackgroundColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 3582
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 2896
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    return v0
.end method

.method getScaledNavSlop()I
    .locals 1

    .prologue
    .line 1884
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method public getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;
    .locals 0

    .prologue
    .line 1496
    return-object p0
.end method

.method getScrollX()I
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    return v0
.end method

.method getScrollY()I
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSearchBox()Landroid/webkit/SearchBox;
    .locals 1

    .prologue
    .line 5660
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5661
    :cond_0
    const/4 v0, 0x0

    .line 5663
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v0

    goto :goto_0
.end method

.method getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5670
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    const-string v0, ""

    .line 5671
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeGetSelection()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Landroid/webkit/WebSettingsClassic;
    .locals 1

    .prologue
    .line 4425
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3555
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3556
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getTitleHeight()I
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    instance-of v0, v0, Landroid/webkit/WebViewClassic$TitleBarDelegate;

    if-eqz v0, :cond_0

    .line 2030
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/WebViewClassic$TitleBarDelegate;

    invoke-interface {v0}, Landroid/webkit/WebViewClassic$TitleBarDelegate;->getTitleHeight()I

    move-result v0

    .line 2032
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3573
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3574
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3537
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3538
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;
    .locals 0

    .prologue
    .line 1491
    return-object p0
.end method

.method getViewHeight()I
    .locals 2

    .prologue
    .line 2072
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getViewHeightWithTitle()I
    .locals 2

    .prologue
    .line 2076
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v0

    .line 2077
    .local v0, height:I
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    if-nez v1, :cond_0

    .line 2078
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v1}, Landroid/webkit/WebView$PrivateAccess;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2080
    :cond_0
    return v0
.end method

.method getViewManager()Landroid/webkit/ViewManager;
    .locals 1

    .prologue
    .line 8902
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    return-object v0
.end method

.method getViewWidth()I
    .locals 3

    .prologue
    .line 2011
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    if-eqz v0, :cond_1

    .line 2012
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v0

    .line 2014
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getVisibleTitleHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2043
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v0

    return v0
.end method

.method public getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 4362
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 4345
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 4319
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getWebViewCore()Landroid/webkit/WebViewCore;
    .locals 1

    .prologue
    .line 7513
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7198
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7199
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7200
    const/4 v0, 0x0

    .line 7202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getExternalZoomPicker()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getZoomOverviewScale()F
    .locals 1

    .prologue
    .line 7218
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    return v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 2734
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->goBackOrForwardImpl(I)V

    .line 2735
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 0
    .parameter "steps"

    .prologue
    .line 2781
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->goBackOrForwardImpl(I)V

    .line 2782
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 2757
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->goBackOrForwardImpl(I)V

    .line 2758
    return-void
.end method

.method incrementTextGeneration()V
    .locals 1

    .prologue
    .line 825
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    return-void
.end method

.method public init(Ljava/util/Map;Z)V
    .locals 6
    .parameter
    .parameter "privateBrowsing"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, javaScriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 1306
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    .line 1309
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/JniUtil;->setContext(Landroid/content/Context;)V

    .line 1311
    new-instance v0, Landroid/webkit/CallbackProxy;

    invoke-direct {v0, v1, p0}, Landroid/webkit/CallbackProxy;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 1312
    new-instance v0, Landroid/webkit/ViewManager;

    invoke-direct {v0, p0}, Landroid/webkit/ViewManager;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    .line 1313
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/L10nUtils;->setApplicationContext(Landroid/content/Context;)V

    .line 1314
    new-instance v0, Landroid/webkit/WebViewCore;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, v1, p0, v2, p1}, Landroid/webkit/WebViewCore;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1315
    invoke-static {v1}, Landroid/webkit/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    .line 1316
    new-instance v0, Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    .line 1317
    new-instance v0, Landroid/webkit/ZoomManager;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p0, v2}, Landroid/webkit/ZoomManager;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/CallbackProxy;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    .line 1322
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->init()V

    .line 1323
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->setupPackageListener(Landroid/content/Context;)V

    .line 1324
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->setupProxyListener(Landroid/content/Context;)V

    .line 1325
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->setupTrustStorageListener(Landroid/content/Context;)V

    .line 1326
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 1328
    if-eqz p2, :cond_0

    .line 1329
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->startPrivateBrowsing()V

    .line 1332
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$AutoFillData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$AutoFillData;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    .line 1333
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mEditTextScroller:Landroid/widget/Scroller;

    .line 1334
    return-void
.end method

.method invalidate()V
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 1526
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 2

    .prologue
    .line 2921
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2922
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    :goto_0
    return-void

    .line 2925
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 2926
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->invokeZoomPicker()V

    goto :goto_0
.end method

.method isEmailUsing()Z
    .locals 1

    .prologue
    .line 3309
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mEmailUsingFlag:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 3728
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 2

    .prologue
    .line 2801
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    .line 2802
    .local v0, settings:Landroid/webkit/WebSettingsClassic;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->isPrivateBrowsingEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isRectFitOnScreen(Landroid/graphics/Rect;)Z
    .locals 8
    .parameter "rect"

    .prologue
    .line 7258
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 7259
    .local v1, rectWidth:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 7260
    .local v0, rectHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v4

    .line 7261
    .local v4, viewWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v3

    .line 7262
    .local v3, viewHeight:I
    int-to-float v5, v4

    int-to-float v6, v1

    div-float/2addr v5, v6

    int-to-float v6, v3

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 7263
    .local v2, scale:F
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v2

    .line 7264
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    if-lt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    add-int/2addr v6, v4

    if-gt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    if-lt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    add-int/2addr v6, v3

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 2622
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 2643
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2644
    invoke-direct {p0, p2, p3, p4}, Landroid/webkit/WebViewClassic;->loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    :goto_0
    return-void

    .line 2647
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 2648
    new-instance v0, Landroid/webkit/WebViewCore$BaseUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$BaseUrlData;-><init>()V

    .line 2649
    .local v0, arg:Landroid/webkit/WebViewCore$BaseUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 2650
    iput-object p2, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    .line 2651
    iput-object p3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    .line 2652
    iput-object p4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    .line 2653
    iput-object p5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    .line 2654
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2655
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 2590
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;)V

    .line 2591
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2573
    .local p2, additionalHttpHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2574
    return-void
.end method

.method public loadViewState(Ljava/io/InputStream;)V
    .locals 3
    .parameter "stream"

    .prologue
    const/4 v1, 0x1

    .line 2472
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    .line 2473
    new-instance v0, Landroid/webkit/WebViewClassic$8;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$8;-><init>(Landroid/webkit/WebViewClassic;)V

    new-array v1, v1, [Ljava/io/InputStream;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2500
    return-void
.end method

.method native nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method notifyFindDialogDismissed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3985
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    .line 3986
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 3987
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_0

    .line 4007
    :goto_0
    return-void

    .line 3990
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->clearMatches()V

    .line 3991
    invoke-direct {p0, v4}, Landroid/webkit/WebViewClassic;->setFindIsUp(Z)V

    .line 3994
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    invoke-direct {p0, v2, v3, v4, v4}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    .line 3997
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mEmailUsingFlag:Z

    if-eqz v2, :cond_1

    .line 3998
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 4000
    .local v1, newWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 4002
    .local v0, newHeight:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xe7

    invoke-virtual {v2, v3, v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4006
    .end local v0           #newHeight:I
    .end local v1           #newWidth:I
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 5676
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->setActive(Z)V

    .line 5678
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5679
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/AccessibilityInjector;->addAccessibilityApisIfNecessary()V

    .line 5682
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsBrowserApp:Z

    if-eqz v1, :cond_2

    .line 5683
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5684
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5685
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5689
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateHwAccelerated()V

    .line 5690
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x1

    .line 4729
    const/4 v5, -0x1

    iput v5, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 4730
    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v5, :cond_0

    iget v5, p0, Landroid/webkit/WebViewClassic;->mOrientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_0

    .line 4731
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 4735
    :cond_0
    iget v5, p0, Landroid/webkit/WebViewClassic;->mOrientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_4

    move v1, v4

    .line 4736
    .local v1, bOrientationChange:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 4737
    const/4 v0, 0x0

    .line 4738
    .local v0, bBaiduURL:Z
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 4739
    .local v2, url:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 4740
    new-instance v5, Landroid/net/WebAddress;

    invoke-direct {v5, v2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 4741
    .local v3, urlHost:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v5, "baidu.com"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4742
    const/4 v0, 0x1

    .line 4746
    .end local v3           #urlHost:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 4747
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->pauseTimers()V

    .line 4748
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mOrientationChange:Z

    .line 4753
    .end local v0           #bBaiduURL:Z
    .end local v2           #url:Ljava/lang/String;
    :cond_2
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Landroid/webkit/WebViewClassic;->mOrientation:I

    .line 4754
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v4, :cond_3

    .line 4755
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x86

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4757
    :cond_3
    return-void

    .line 4735
    .end local v1           #bOrientationChange:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .parameter "outAttrs"

    .prologue
    .line 4993
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-nez v0, :cond_0

    .line 4994
    new-instance v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    .line 4995
    new-instance v0, Landroid/webkit/AutoCompletePopup;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/webkit/AutoCompletePopup;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$WebViewInputConnection;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    .line 4997
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setupEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 4998
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 5694
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 5695
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 5696
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->setActive(Z)V

    .line 5698
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5699
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/AccessibilityInjector;->removeAccessibilityApisIfNecessary()V

    .line 5706
    :goto_0
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsBrowserApp:Z

    if-eqz v0, :cond_1

    .line 5707
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5711
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateHwAccelerated()V

    .line 5713
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->ensureFunctorDetached()V

    .line 5714
    return-void

    .line 5703
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 4578
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->inFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4649
    :cond_0
    :goto_0
    return-void

    .line 4583
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_2

    .line 4584
    iget v0, p0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 4591
    :cond_2
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    if-nez v0, :cond_3

    .line 4592
    iget v0, p0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 4596
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4597
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->setHardwareAccelerated()V

    .line 4602
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 4603
    .local v8, saveCount:I
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getUseWebViewBackgroundForOverscrollBackground()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4605
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->drawOverScrollBackground(Landroid/graphics/Canvas;)V

    .line 4608
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4609
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->drawContent(Landroid/graphics/Canvas;)V

    .line 4610
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4615
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->signalRepaintDone()V

    .line 4617
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v0, p1}, Landroid/webkit/OverScrollGlow;->drawEdgeGlows(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4618
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 4621
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    if-eqz v0, :cond_9

    .line 4622
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4631
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getNavDump()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4632
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 4633
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    if-nez v0, :cond_7

    .line 4634
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    .line 4635
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4637
    :cond_7
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    iget v2, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    iget v4, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4641
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    iget v2, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    iget v4, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 4599
    .end local v8           #saveCount:I
    :cond_8
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->resumeWebKitDraw()V

    goto/16 :goto_1

    .line 4623
    .restart local v8       #saveCount:I
    :cond_9
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->shouldDrawHighlightRect()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4624
    new-instance v6, Landroid/graphics/RegionIterator;

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-direct {v6, v0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 4625
    .local v6, iter:Landroid/graphics/RegionIterator;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 4626
    .local v7, r:Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {v6, v7}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4627
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3489
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    if-gez v0, :cond_0

    .line 3490
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int/2addr p4, v0

    .line 3492
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, v0, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3493
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3494
    return-void
.end method

.method onFixedLengthZoomAnimationEnd()V
    .locals 1

    .prologue
    .line 4810
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_0

    .line 4811
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4813
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->onZoomAnimationEnd()V

    .line 4814
    return-void
.end method

.method onFixedLengthZoomAnimationStart()V
    .locals 1

    .prologue
    .line 4805
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4806
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->onZoomAnimationStart()V

    .line 4807
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5816
    if-eqz p1, :cond_1

    .line 5817
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 5818
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    .line 5824
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5825
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 5827
    :cond_0
    return-void

    .line 5820
    :cond_1
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 5821
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    .line 5822
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 6765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 6766
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 6789
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v4, p1}, Landroid/webkit/WebView$PrivateAccess;->super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    .line 6770
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 6771
    const/4 v3, 0x0

    .line 6772
    .local v3, vscroll:F
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 6777
    .local v1, hscroll:F
    :goto_1
    cmpl-float v4, v1, v5

    if-nez v4, :cond_1

    cmpl-float v4, v3, v5

    if-eqz v4, :cond_0

    .line 6778
    :cond_1
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v4}, Landroid/webkit/WebView$PrivateAccess;->getVerticalScrollFactor()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v2, v4

    .line 6780
    .local v2, vdelta:I
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v4}, Landroid/webkit/WebView$PrivateAccess;->getHorizontalScrollFactor()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 6782
    .local v0, hdelta:I
    invoke-direct {p0, v0, v2, v6, v6}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6783
    const/4 v4, 0x1

    goto :goto_0

    .line 6774
    .end local v0           #hdelta:I
    .end local v1           #hscroll:F
    .end local v2           #vdelta:I
    .end local v3           #vscroll:F
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    neg-float v3, v4

    .line 6775
    .restart local v3       #vscroll:F
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1       #hscroll:F
    goto :goto_1

    .line 6766
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 6104
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_0

    .line 6105
    const/4 v2, 0x0

    .line 6111
    :goto_0
    return v2

    .line 6107
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 6108
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    .line 6109
    .local v1, y:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x87

    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6110
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView$PrivateAccess;->super_onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 6111
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 1830
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isScrollableForAccessibility()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1831
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1832
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1833
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v3

    .line 1834
    .local v3, convertedContentWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getPaddingLeft()I

    move-result v5

    sub-int v1, v4, v5

    .line 1836
    .local v1, adjustedViewWidth:I
    sub-int v4, v3, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1837
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    .line 1838
    .local v2, convertedContentHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 1840
    .local v0, adjustedViewHeight:I
    sub-int v4, v2, v0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1841
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1803
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1826
    :goto_0
    return-void

    .line 1808
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isScrollableForAccessibility()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1810
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v3

    .line 1811
    .local v3, convertedContentHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 1813
    .local v0, adjustedViewHeight:I
    sub-int v7, v3, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1814
    .local v4, maxScrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    if-lez v7, :cond_3

    move v1, v5

    .line 1815
    .local v1, canScrollBackward:Z
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int/2addr v7, v4

    if-lez v7, :cond_4

    move v2, v5

    .line 1817
    .local v2, canScrollForward:Z
    :goto_2
    if-eqz v2, :cond_1

    .line 1818
    const/16 v5, 0x1000

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1821
    :cond_1
    if-eqz v2, :cond_2

    .line 1822
    const/16 v5, 0x2000

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1825
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/webkit/AccessibilityInjector;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    .end local v1           #canScrollBackward:Z
    .end local v2           #canScrollForward:Z
    :cond_3
    move v1, v6

    .line 1814
    goto :goto_1

    .restart local v1       #canScrollBackward:Z
    :cond_4
    move v2, v6

    .line 1815
    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5213
    const/16 v2, 0x14

    if-ne p1, v2, :cond_0

    .line 5214
    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyDown keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBlockWebkitViewMessages="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNativeClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5219
    :cond_0
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v2, :cond_1

    .line 5220
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 5222
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v2, :cond_3

    move v1, v0

    .line 5324
    :cond_2
    :goto_0
    return v1

    .line 5227
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v0

    .line 5228
    goto :goto_0

    .line 5231
    :cond_4
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_5

    move v1, v0

    .line 5232
    goto :goto_0

    .line 5247
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v1, v0

    .line 5249
    goto :goto_0

    .line 5253
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/webkit/AccessibilityInjector;->handleKeyEventIfNecessary(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5258
    :cond_8
    const/16 v2, 0x5c

    if-ne p1, v2, :cond_a

    .line 5259
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5260
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->pageUp(Z)Z

    goto :goto_0

    .line 5262
    :cond_9
    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5263
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pageUp(Z)Z

    goto :goto_0

    .line 5268
    :cond_a
    const/16 v2, 0x5d

    if-ne p1, v2, :cond_c

    .line 5269
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5270
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->pageDown(Z)Z

    goto :goto_0

    .line 5272
    :cond_b
    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5273
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pageDown(Z)Z

    goto :goto_0

    .line 5278
    :cond_c
    const/16 v2, 0x7a

    if-ne p1, v2, :cond_d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5279
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pageUp(Z)Z

    goto :goto_0

    .line 5283
    :cond_d
    const/16 v2, 0x7b

    if-ne p1, v2, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5284
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pageDown(Z)Z

    goto :goto_0

    .line 5288
    :cond_e
    const/16 v2, 0x13

    if-lt p1, v2, :cond_f

    const/16 v2, 0x16

    if-gt p1, v2, :cond_f

    .line 5290
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 5293
    :cond_f
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->isEnterActionKey(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5294
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 5295
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_10

    .line 5296
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v2, :cond_2

    .line 5299
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mGotCenterDown:Z

    .line 5300
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x72

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5305
    :cond_10
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getNavDump()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5306
    packed-switch p1, :pswitch_data_0

    .line 5322
    :cond_11
    :goto_1
    invoke-direct {p0, p2}, Landroid/webkit/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 5308
    :pswitch_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->dumpDisplayTree()V

    goto :goto_1

    .line 5312
    :pswitch_1
    const/16 v2, 0xc

    if-ne p1, v2, :cond_12

    move v0, v1

    :cond_12
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->dumpDomTree(Z)V

    goto :goto_1

    .line 5316
    :pswitch_2
    const/16 v2, 0xe

    if-ne p1, v2, :cond_13

    move v0, v1

    :cond_13
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->dumpRenderTree(Z)V

    goto :goto_1

    .line 5306
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 5178
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v1, :cond_1

    .line 5189
    :cond_0
    :goto_0
    return v0

    .line 5182
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5184
    const/16 v1, 0x67

    invoke-virtual {p0, v1, v0, v0, p3}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 5185
    const/16 v1, 0x68

    invoke-virtual {p0, v1, v0, v0, p3}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 5187
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 5199
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v0, :cond_0

    .line 5200
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/AutoCompletePopup;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 5202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5333
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v4, :cond_1

    .line 5380
    :cond_0
    :goto_0
    return v2

    .line 5337
    :cond_1
    iget v4, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v4, :cond_0

    .line 5342
    const/4 v4, 0x5

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 5345
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    .line 5346
    .local v1, text:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5347
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 5348
    goto :goto_0

    .line 5354
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #text:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5360
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/webkit/AccessibilityInjector;->handleKeyEventIfNecessary(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 5362
    goto :goto_0

    .line 5365
    :cond_3
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->isEnterActionKey(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5367
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 5368
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mGotCenterDown:Z

    .line 5370
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v2, :cond_4

    .line 5371
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 5372
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    move v2, v3

    .line 5373
    goto :goto_0

    .line 5378
    :cond_4
    invoke-direct {p0, p2}, Landroid/webkit/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    move v2, v3

    .line 5380
    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x100

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 7366
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 7367
    .local v2, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 7368
    .local v3, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 7369
    .local v6, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 7371
    .local v7, widthSize:I
    move v4, v3

    .line 7372
    .local v4, measuredHeight:I
    move v5, v7

    .line 7375
    .local v5, measuredWidth:I
    iget v8, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    .line 7376
    .local v0, contentHeight:I
    iget v8, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    .line 7379
    .local v1, contentWidth:I
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebViewClassic;->mScale:F

    .line 7380
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebViewClassic;->mInvScale:F

    .line 7385
    const/high16 v8, 0x4000

    if-eq v2, v8, :cond_2

    .line 7386
    iput-boolean v10, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    .line 7387
    move v4, v0

    .line 7388
    const/high16 v8, -0x8000

    if-ne v2, v8, :cond_0

    .line 7391
    if-le v4, v3, :cond_0

    .line 7392
    move v4, v3

    .line 7393
    iput-boolean v9, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    .line 7394
    or-int/2addr v4, v11

    .line 7400
    :cond_0
    :goto_0
    iget v8, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v8, :cond_1

    .line 7401
    iget-boolean v8, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    invoke-direct {p0, v8}, Landroid/webkit/WebViewClassic;->nativeSetHeightCanMeasure(Z)V

    .line 7404
    :cond_1
    if-nez v6, :cond_3

    .line 7405
    iput-boolean v10, p0, Landroid/webkit/WebViewClassic;->mWidthCanMeasure:Z

    .line 7406
    move v5, v1

    .line 7414
    :goto_1
    monitor-enter p0

    .line 7415
    :try_start_0
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v8, v5, v4}, Landroid/webkit/WebView$PrivateAccess;->setMeasuredDimension(II)V

    .line 7416
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7417
    return-void

    .line 7398
    :cond_2
    iput-boolean v9, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    goto :goto_0

    .line 7408
    :cond_3
    if-ge v5, v1, :cond_4

    .line 7409
    or-int/2addr v5, v11

    .line 7411
    :cond_4
    iput-boolean v9, p0, Landroid/webkit/WebViewClassic;->mWidthCanMeasure:Z

    goto :goto_1

    .line 7416
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method public onOverScrolled(IIZZ)V
    .locals 7
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v2, 0x1

    .line 3501
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3502
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->scrollEditText(II)V

    .line 3530
    :cond_0
    :goto_0
    return-void

    .line 3505
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 3506
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->scrollLayerTo(II)V

    goto :goto_0

    .line 3509
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    .line 3510
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v5

    .line 3511
    .local v5, maxX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v6

    .line 3512
    .local v6, maxY:I
    if-nez v5, :cond_6

    .line 3514
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result p1

    .line 3518
    :cond_3
    :goto_1
    if-ltz p2, :cond_4

    if-le p2, v6, :cond_5

    .line 3519
    :cond_4
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    .line 3522
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    .line 3523
    .local v3, oldX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    .line 3525
    .local v4, oldY:I
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_scrollTo(II)V

    .line 3527
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_0

    .line 3528
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/OverScrollGlow;->pullGlow(IIIIII)V

    goto :goto_0

    .line 3515
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    :cond_6
    if-ltz p1, :cond_7

    if-le p1, v5, :cond_3

    .line 3516
    :cond_7
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    goto :goto_1
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 4251
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsBrowserApp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsDebuggable:Z

    if-eqz v0, :cond_0

    .line 4252
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageFinished url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->onPageFinished(Ljava/lang/String;)V

    .line 4258
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4259
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/AccessibilityInjector;->onPageFinished(Ljava/lang/String;)V

    .line 4261
    :cond_1
    return-void
.end method

.method onPageStarted(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 4223
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsBrowserApp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsDebuggable:Z

    if-eqz v0, :cond_0

    .line 4224
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageStarted url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4233
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    .line 4237
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4238
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/AccessibilityInjector;->onPageStarted(Ljava/lang/String;)V

    .line 4242
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    .line 4243
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3627
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    if-nez v0, :cond_2

    .line 3628
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    .line 3629
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3632
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 3633
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->pauseAndDispatch()V

    .line 3635
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_1

    .line 3636
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v2}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    .line 3639
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->cancelSelectDialog()V

    .line 3640
    invoke-static {}, Landroid/webkit/WebCoreThreadWatchdog;->pause()V

    .line 3642
    :cond_2
    return-void
.end method

.method onPinchToZoomAnimationEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "detector"

    .prologue
    .line 6070
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->onZoomAnimationEnd()V

    .line 6074
    const/16 v0, 0x8

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 6075
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    .line 6076
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    iget-wide v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->startTouch(FFJ)V

    .line 6077
    return-void
.end method

.method onPinchToZoomAnimationStart()V
    .locals 0

    .prologue
    .line 6065
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->cancelTouch()V

    .line 6066
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->onZoomAnimationStart()V

    .line 6067
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3704
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 3705
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    .line 3706
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3707
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 3708
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v2}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    .line 3711
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mUserPresent:Z

    if-nez v0, :cond_1

    .line 3712
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWindowVisibility()I

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibility()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebViewClassic;->updatePageVisibilityState(II)V

    .line 3713
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mUserPresent:Z

    .line 3720
    :cond_1
    invoke-static {}, Landroid/webkit/WebCoreThreadWatchdog;->resume()V

    .line 3721
    return-void
.end method

.method onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    const/4 v3, 0x1

    .line 1889
    const/4 v1, 0x0

    .line 1890
    .local v1, rVal:Z
    if-nez p4, :cond_0

    .line 1892
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v3, v1

    .line 1960
    :goto_1
    return v3

    .line 1894
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 1895
    const-string/jumbo v4, "webview"

    const-string/jumbo v5, "onSavePassword should not be called while dialog is up"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1899
    :cond_1
    iput-object p4, p0, Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    .line 1900
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1902
    .local v2, remember:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1907
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1909
    .local v0, neverRemember:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1914
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040341

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040392

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040393

    new-instance v5, Landroid/webkit/WebViewClassic$5;

    invoke-direct {v5, p0, p4}, Landroid/webkit/WebViewClassic$5;-><init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040394

    new-instance v5, Landroid/webkit/WebViewClassic$4;

    invoke-direct {v5, p0, v2}, Landroid/webkit/WebViewClassic$4;-><init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040395

    new-instance v5, Landroid/webkit/WebViewClassic$3;

    invoke-direct {v5, p0, v0}, Landroid/webkit/WebViewClassic$3;-><init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebViewClassic$2;

    invoke-direct {v4, p0, p4}, Landroid/webkit/WebViewClassic$2;-><init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1958
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public onScrollChanged(IIII)V
    .locals 4
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v3, 0x0

    .line 5985
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    if-nez v1, :cond_0

    .line 5986
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 5989
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    .line 5990
    .local v0, titleHeight:I
    sub-int v1, v0, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 5991
    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    .line 5994
    .end local v0           #titleHeight:I
    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 5897
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getDefaultMinZoomScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 5898
    .local v0, newMaxViewportWidth:I
    sget v1, Landroid/webkit/WebViewClassic;->sMaxViewportWidth:I

    if-le v0, v1, :cond_0

    .line 5899
    sput v0, Landroid/webkit/WebViewClassic;->sMaxViewportWidth:I

    .line 5902
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/webkit/ZoomManager;->onSizeChanged(IIII)V

    .line 5904
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    if-nez v1, :cond_1

    .line 5908
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebViewClassic;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 5910
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v1, :cond_2

    .line 5911
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->scrollEditIntoView()V

    .line 5913
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V

    .line 5914
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 6116
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isClickable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6135
    :cond_0
    :goto_0
    return v0

    .line 6120
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    if-eqz v1, :cond_0

    .line 6124
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isFocusableInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6126
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 6129
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/webkit/WebViewInputDispatcher;->postPointerEvent(Landroid/view/MotionEvent;IIF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6131
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents()V

    .line 6132
    const/4 v0, 0x1

    goto :goto_0

    .line 6134
    :cond_3
    const-string/jumbo v1, "webview"

    const-string/jumbo v2, "mInputDispatcher rejected the event!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6838
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 6839
    .local v0, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 6840
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->pageDown(Z)Z

    .line 6841
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->pageUp(Z)Z

    .line 6907
    :cond_1
    :goto_0
    return v2

    .line 6844
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    .line 6845
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v4, :cond_1

    .line 6848
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    .line 6849
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_3

    move v2, v3

    .line 6850
    goto :goto_0

    .line 6857
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    :cond_4
    move v2, v3

    .line 6858
    goto :goto_0

    .line 6860
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_7

    .line 6862
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 6863
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    .line 6864
    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mTrackballUpTime:J

    .line 6865
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v4, :cond_6

    .line 6866
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 6867
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_0

    :cond_6
    move v2, v3

    .line 6875
    goto :goto_0

    .line 6877
    :cond_7
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mMapTrackballToArrowKeys:Z

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    move v2, v3

    .line 6880
    goto :goto_0

    .line 6882
    :cond_a
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    if-nez v4, :cond_1

    .line 6886
    iget-wide v4, p0, Landroid/webkit/WebViewClassic;->mTrackballUpTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 6891
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 6892
    iget-wide v4, p0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_b

    .line 6897
    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mTrackballFirstTime:J

    .line 6898
    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    .line 6900
    :cond_b
    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    .line 6904
    iget v3, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    .line 6905
    iget v3, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    .line 6906
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebViewClassic;->doTrackball(JI)V

    goto/16 :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 5720
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_0

    .line 5721
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 5723
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->updateDrawingState()V

    .line 5725
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWindowVisibility()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/webkit/WebViewClassic;->updatePageVisibilityState(II)V

    .line 5726
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x1

    .line 5762
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->setActive(Z)V

    .line 5763
    if-eqz p1, :cond_2

    .line 5764
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->setActiveWebView(Landroid/webkit/WebViewClassic;)V

    .line 5765
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    if-eqz v2, :cond_0

    .line 5766
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5767
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    .line 5770
    :cond_0
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mFindIsUp:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5772
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_1

    .line 5774
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 5775
    .local v0, location:[I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 5777
    aget v2, v0, v4

    if-lez v2, :cond_1

    .line 5778
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearActionModes()V

    .line 5792
    .end local v0           #location:[I
    :cond_1
    :goto_0
    return-void

    .line 5784
    :cond_2
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->removeActiveWebView(Landroid/webkit/WebViewClassic;)V

    .line 5785
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    .line 5786
    .local v1, settings:Landroid/webkit/WebSettings;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->enableSmoothTransition()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->isUpdatePicturePaused(Landroid/webkit/WebViewCore;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5788
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5789
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 3646
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->updateDrawingState()V

    .line 3648
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebViewClassic;->updatePageVisibilityState(II)V

    .line 3649
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 1994
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 2002
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public pageDown(Z)Z
    .locals 6
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2847
    iget v3, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v3, :cond_0

    .line 2861
    :goto_0
    return v2

    .line 2850
    :cond_0
    if-eqz p1, :cond_1

    .line 2851
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v4

    invoke-direct {p0, v3, v4, v5, v2}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2854
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v0

    .line 2856
    .local v0, h:I
    const/16 v3, 0x30

    if-le v0, v3, :cond_2

    .line 2857
    add-int/lit8 v1, v0, -0x18

    .line 2861
    .local v1, y:I
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1, v5, v2}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2859
    .end local v1           #y:I
    :cond_2
    div-int/lit8 v1, v0, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 2861
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method protected pageSwapCallback(Z)V
    .locals 3
    .parameter "notifyAnimationStarted"

    .prologue
    .line 8241
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->resumeWebKitDraw()V

    .line 8242
    if-eqz p1, :cond_0

    .line 8243
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 8245
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    instance-of v0, v0, Landroid/webkit/WebViewClassic$PageSwapDelegate;

    if-eqz v0, :cond_1

    .line 8247
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/WebViewClassic$PageSwapDelegate;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewClassic$PageSwapDelegate;->onPageSwapOccurred(Z)V

    .line 8250
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    if-eqz v0, :cond_2

    .line 8253
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    .line 8255
    :cond_2
    return-void
.end method

.method public pageUp(Z)Z
    .locals 5
    .parameter "top"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2823
    iget v3, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v3, :cond_0

    .line 2838
    :goto_0
    return v2

    .line 2826
    :cond_0
    if-eqz p1, :cond_1

    .line 2828
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-direct {p0, v3, v2, v4, v2}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2831
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v0

    .line 2833
    .local v0, h:I
    const/16 v3, 0x30

    if-le v0, v3, :cond_2

    .line 2834
    neg-int v3, v0

    add-int/lit8 v1, v3, 0x18

    .line 2838
    .local v1, y:I
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1, v4, v2}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2836
    .end local v1           #y:I
    :cond_2
    neg-int v3, v0

    div-int/lit8 v1, v3, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 2838
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 6
    .parameter "currentText"
    .parameter "event"

    .prologue
    const/16 v5, 0x80

    .line 7495
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_0

    .line 7510
    :goto_0
    return-void

    .line 7498
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$JSKeyData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSKeyData;-><init>()V

    .line 7499
    .local v0, arg:Landroid/webkit/WebViewCore$JSKeyData;
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    .line 7500
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    .line 7502
    iget v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    .line 7503
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x73

    iget v3, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 7508
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 7509
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0
.end method

.method public pasteFromClipboard()V
    .locals 6

    .prologue
    .line 5643
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 5645
    .local v2, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 5646
    .local v0, clipData:Landroid/content/ClipData;
    if-eqz v0, :cond_0

    .line 5647
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 5649
    .local v1, clipItem:Landroid/content/ClipData$Item;
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5650
    .local v3, pasteText:Ljava/lang/CharSequence;
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v4, :cond_0

    .line 5651
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v4, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    .line 5654
    .end local v1           #clipItem:Landroid/content/ClipData$Item;
    .end local v3           #pasteText:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public pauseTimers()V
    .locals 2

    .prologue
    .line 3611
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3612
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 9
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1768
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1770
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v5, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    .line 1798
    :goto_0
    return v5

    .line 1773
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/webkit/AccessibilityInjector;->supportsAccessibilityAction(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1774
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/webkit/AccessibilityInjector;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    goto :goto_0

    .line 1777
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1798
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v5, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    goto :goto_0

    .line 1780
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v3

    .line 1781
    .local v3, convertedContentHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 1783
    .local v0, adjustedViewHeight:I
    sub-int v7, v3, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1784
    .local v4, maxScrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    if-lez v7, :cond_2

    move v1, v5

    .line 1785
    .local v1, canScrollBackward:Z
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int/2addr v7, v4

    if-lez v7, :cond_3

    move v2, v5

    .line 1786
    .local v2, canScrollForward:Z
    :goto_2
    const/16 v7, 0x2000

    if-ne p1, v7, :cond_4

    if-eqz v1, :cond_4

    .line 1787
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7, v6, v0}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_0

    .end local v1           #canScrollBackward:Z
    .end local v2           #canScrollForward:Z
    :cond_2
    move v1, v6

    .line 1784
    goto :goto_1

    .restart local v1       #canScrollBackward:Z
    :cond_3
    move v2, v6

    .line 1785
    goto :goto_2

    .line 1790
    .restart local v2       #canScrollForward:Z
    :cond_4
    const/16 v7, 0x1000

    if-ne p1, v7, :cond_5

    if-eqz v2, :cond_5

    .line 1791
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    neg-int v8, v0

    invoke-virtual {v7, v6, v8}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_0

    :cond_5
    move v5, v6

    .line 1794
    goto :goto_0

    .line 1777
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4668
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    .line 4697
    :cond_0
    :goto_0
    return v1

    .line 4672
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v0

    .line 4673
    .local v0, detector:Landroid/view/ScaleGestureDetector;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 4674
    goto :goto_0

    .line 4677
    :cond_2
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 4681
    :cond_3
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v3}, Landroid/webkit/WebView$PrivateAccess;->super_performLongClick()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4682
    const/4 v1, 0x1

    goto :goto_0

    .line 4688
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectText()Z

    move-result v1

    .line 4689
    .local v1, isSelecting:Z
    if-eqz v1, :cond_5

    .line 4690
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->performHapticFeedback(I)Z

    goto :goto_0

    .line 4691
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4692
    new-instance v3, Landroid/webkit/SelectActionModeCallback;

    invoke-direct {v3}, Landroid/webkit/SelectActionModeCallback;-><init>()V

    iput-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    .line 4693
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v3, p0}, Landroid/webkit/SelectActionModeCallback;->setWebView(Landroid/webkit/WebViewClassic;)V

    .line 4694
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v3, v2}, Landroid/webkit/SelectActionModeCallback;->setTextSelected(Z)V

    .line 4695
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0
.end method

.method pinLocX(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 3024
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    if-eqz v0, :cond_1

    .line 3034
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 3026
    .restart local p1
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mEmailUsingFlag:Z

    if-eqz v0, :cond_2

    .line 3027
    if-gez p1, :cond_0

    .line 3028
    const/4 p1, 0x0

    goto :goto_0

    .line 3034
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result p1

    goto :goto_0
.end method

.method pinLocY(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 3039
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    if-eqz v0, :cond_1

    .line 3052
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 3044
    .restart local p1
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mEmailUsingFlag:Z

    if-eqz v0, :cond_2

    .line 3045
    if-gez p1, :cond_0

    .line 3046
    const/4 p1, 0x0

    goto :goto_0

    .line 3052
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result p1

    goto :goto_0
.end method

.method public pinScrollByDx(I)V
    .locals 3
    .parameter "dx"

    .prologue
    .line 4152
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->abortAnimation()V

    .line 4153
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result p1

    .line 4154
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 4155
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 2605
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2606
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 2607
    new-instance v0, Landroid/webkit/WebViewCore$PostUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$PostUrlData;-><init>()V

    .line 2608
    .local v0, arg:Landroid/webkit/WebViewCore$PostUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    .line 2609
    iput-object p2, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    .line 2610
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x84

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2611
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 2615
    .end local v0           #arg:Landroid/webkit/WebViewCore$PostUrlData;
    :goto_0
    return-void

    .line 2613
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .parameter "reloadOpenPages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4441
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 2709
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 2710
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 2711
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2712
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 3
    .parameter "interfaceName"

    .prologue
    .line 4411
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    .line 4412
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 4413
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 4414
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x95

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4416
    .end local v0           #arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    :cond_0
    return-void
.end method

.method replaceTextfieldText(IILjava/lang/String;II)V
    .locals 2
    .parameter "oldStart"
    .parameter "oldEnd"
    .parameter "replace"
    .parameter "newStart"
    .parameter "newEnd"

    .prologue
    .line 7484
    new-instance v0, Landroid/webkit/WebViewCore$ReplaceTextData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ReplaceTextData;-><init>()V

    .line 7485
    .local v0, arg:Landroid/webkit/WebViewCore$ReplaceTextData;
    iput-object p3, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    .line 7486
    iput p4, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    .line 7487
    iput p5, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    .line 7488
    iget v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    .line 7489
    iget v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    iput v1, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    .line 7490
    const/16 v1, 0x72

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 7491
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 16
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 7423
    move-object/from16 v0, p0

    iget v11, v0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v11, :cond_0

    .line 7424
    const/4 v11, 0x0

    .line 7479
    :goto_0
    return v11

    .line 7428
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v11}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 7429
    const/4 v11, 0x0

    goto :goto_0

    .line 7432
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 7435
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v14

    invoke-direct {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7440
    .local v1, content:Landroid/graphics/Rect;
    iget v11, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v7

    .line 7441
    .local v7, screenTop:I
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    .line 7442
    .local v4, screenBottom:I
    sub-int v2, v4, v7

    .line 7443
    .local v2, height:I
    const/4 v9, 0x0

    .line 7445
    .local v9, scrollYDelta:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    if-le v11, v4, :cond_5

    .line 7446
    div-int/lit8 v3, v2, 0x3

    .line 7447
    .local v3, oneThirdOfScreenHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    mul-int/lit8 v12, v3, 0x2

    if-le v11, v12, :cond_4

    .line 7450
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v11, v7

    .line 7460
    .end local v3           #oneThirdOfScreenHeight:I
    :cond_2
    :goto_1
    iget v11, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    .line 7461
    .local v5, screenLeft:I
    iget v11, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v6

    .line 7462
    .local v6, screenRight:I
    sub-int v10, v6, v5

    .line 7463
    .local v10, width:I
    const/4 v8, 0x0

    .line 7465
    .local v8, scrollXDelta:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->right:I

    if-le v11, v6, :cond_7

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-le v11, v5, :cond_7

    .line 7466
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-le v11, v10, :cond_6

    .line 7467
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v5

    add-int/2addr v8, v11

    .line 7475
    :cond_3
    :goto_2
    or-int v11, v9, v8

    if-eqz v11, :cond_9

    .line 7476
    if-nez p3, :cond_8

    const/4 v11, 0x1

    :goto_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v11, v12}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v11

    goto/16 :goto_0

    .line 7454
    .end local v5           #screenLeft:I
    .end local v6           #screenRight:I
    .end local v8           #scrollXDelta:I
    .end local v10           #width:I
    .restart local v3       #oneThirdOfScreenHeight:I
    :cond_4
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    add-int v12, v7, v3

    sub-int v9, v11, v12

    goto :goto_1

    .line 7456
    .end local v3           #oneThirdOfScreenHeight:I
    :cond_5
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    if-ge v11, v7, :cond_2

    .line 7457
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v11, v7

    goto :goto_1

    .line 7469
    .restart local v5       #screenLeft:I
    .restart local v6       #screenRight:I
    .restart local v8       #scrollXDelta:I
    .restart local v10       #width:I
    :cond_6
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v6

    add-int/2addr v8, v11

    goto :goto_2

    .line 7471
    :cond_7
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-ge v11, v5, :cond_3

    .line 7472
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int v11, v5, v11

    sub-int/2addr v8, v11

    goto :goto_2

    .line 7476
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 7479
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 7334
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mFindIsUp:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 7361
    :cond_0
    :goto_0
    return v1

    .line 7335
    :cond_1
    const/4 v1, 0x0

    .line 7336
    .local v1, result:Z
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v2, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 7337
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getNeedInitialFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7342
    const/4 v0, 0x0

    .line 7343
    .local v0, fakeKeyDirection:I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 7351
    :sswitch_0
    const/16 v0, 0x15

    .line 7359
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xe0

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0

    .line 7345
    :sswitch_1
    const/16 v0, 0x13

    .line 7346
    goto :goto_1

    .line 7348
    :sswitch_2
    const/16 v0, 0x14

    .line 7349
    goto :goto_1

    .line 7354
    :sswitch_3
    const/16 v0, 0x16

    .line 7355
    goto :goto_1

    .line 7343
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_3
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 5
    .parameter "hrefMsg"

    .prologue
    .line 2976
    if-nez p1, :cond_0

    .line 2991
    :goto_0
    return-void

    .line 2979
    :cond_0
    iget v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 2980
    .local v0, contentX:I
    iget v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    .line 2981
    .local v1, contentY:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget v2, v2, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestX:I

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget v2, v2, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestY:I

    if-ne v2, v1, :cond_1

    .line 2983
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v4, v4, Landroid/webkit/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "title"

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v4, v4, Landroid/webkit/WebViewCore$WebKitHitTest;->mAnchorText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2985
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "src"

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v4, v4, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2989
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x89

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method requestFormData(Ljava/lang/String;IZZ)V
    .locals 8
    .parameter "name"
    .parameter "nodePointer"
    .parameter "autoFillable"
    .parameter "autoComplete"

    .prologue
    .line 5052
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getSaveFormData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5053
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 5054
    .local v4, update:Landroid/os/Message;
    iput p2, v4, Landroid/os/Message;->arg1:I

    .line 5055
    new-instance v0, Landroid/webkit/WebViewClassic$RequestFormData;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewClassic$RequestFormData;-><init>(Landroid/webkit/WebViewClassic;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V

    .line 5057
    .local v0, updater:Landroid/webkit/WebViewClassic$RequestFormData;
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5058
    .local v7, t:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 5060
    .end local v0           #updater:Landroid/webkit/WebViewClassic$RequestFormData;
    .end local v4           #update:Landroid/os/Message;
    .end local v7           #t:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2998
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_0

    .line 3004
    :goto_0
    return-void

    .line 2999
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v1, v2, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    .line 3000
    .local v1, url:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 3001
    .local v0, data:Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3002
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3003
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2999
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #url:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method requestListBox([Ljava/lang/String;[II)V
    .locals 7
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"

    .prologue
    .line 8755
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebViewClassic$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic$InvokeListBox;-><init>(Landroid/webkit/WebViewClassic;[Ljava/lang/String;[IILandroid/webkit/WebViewClassic$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8757
    return-void
.end method

.method requestListBox([Ljava/lang/String;[I[I)V
    .locals 7
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"

    .prologue
    .line 8741
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebViewClassic$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic$InvokeListBox;-><init>(Landroid/webkit/WebViewClassic;[Ljava/lang/String;[I[ILandroid/webkit/WebViewClassic$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8743
    return-void
.end method

.method resetTrackballTime()V
    .locals 2

    .prologue
    .line 6833
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    .line 6834
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 5
    .parameter "b"
    .parameter "src"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2411
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2447
    :cond_0
    :goto_0
    return v3

    .line 2414
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2418
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2419
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2420
    .local v0, copy:Landroid/os/Bundle;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebViewClassic$7;

    invoke-direct {v4, p0, v2, v0}, Landroid/webkit/WebViewClassic$7;-><init>(Landroid/webkit/WebViewClassic;Ljava/io/FileInputStream;Landroid/os/Bundle;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2447
    .end local v0           #copy:Landroid/os/Bundle;
    .end local v2           #in:Ljava/io/FileInputStream;
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2444
    :catch_0
    move-exception v1

    .line 2445
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10
    .parameter "inState"

    .prologue
    const/4 v8, 0x0

    .line 2517
    const/4 v6, 0x0

    .line 2518
    .local v6, returnList:Landroid/webkit/WebBackForwardList;
    if-nez p1, :cond_0

    move-object v8, v6

    .line 2565
    :goto_0
    return-object v8

    .line 2521
    :cond_0
    const-string v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "history"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2522
    const-string v9, "certificate"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v9

    iput-object v9, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    .line 2525
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v9}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 2526
    .local v5, list:Landroid/webkit/WebBackForwardList;
    const-string v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2530
    .local v3, index:I
    monitor-enter v5

    .line 2531
    :try_start_0
    const-string v9, "history"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2533
    .local v1, history:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 2536
    .local v7, size:I
    if-ltz v3, :cond_1

    if-lt v3, v7, :cond_2

    .line 2537
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 2553
    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v7           #size:I
    :catchall_0
    move-exception v8

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 2539
    .restart local v1       #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .restart local v7       #size:I
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 2540
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2541
    .local v0, data:[B
    if-nez v0, :cond_3

    .line 2544
    monitor-exit v5

    goto :goto_0

    .line 2546
    :cond_3
    new-instance v4, Landroid/webkit/WebHistoryItem;

    invoke-direct {v4, v0}, Landroid/webkit/WebHistoryItem;-><init>([B)V

    .line 2547
    .local v4, item:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v5, v4}, Landroid/webkit/WebBackForwardList;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V

    .line 2539
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2550
    .end local v0           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    .line 2552
    invoke-virtual {v6, v3}, Landroid/webkit/WebBackForwardList;->setCurrentIndex(I)V

    .line 2553
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2555
    const-string/jumbo v8, "privateBrowsingEnabled"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2556
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettingsClassic;->setPrivateBrowsingEnabled(Z)V

    .line 2558
    :cond_5
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8, p1}, Landroid/webkit/ZoomManager;->restoreZoomState(Landroid/os/Bundle;)V

    .line 2561
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->removeMessages()V

    .line 2563
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x6c

    invoke-virtual {v8, v9, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #list:Landroid/webkit/WebBackForwardList;
    .end local v7           #size:I
    :cond_6
    move-object v8, v6

    .line 2565
    goto/16 :goto_0
.end method

.method public resumeTimers()V
    .locals 2

    .prologue
    .line 3619
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3620
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 2112
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 4
    .parameter "b"
    .parameter "dest"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2350
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2351
    :cond_0
    const/4 v2, 0x0

    .line 2385
    :goto_0
    return v2

    .line 2353
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 2356
    .local v0, p:Landroid/graphics/Picture;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2357
    .local v1, temp:Ljava/io/File;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/webkit/WebViewClassic$6;

    invoke-direct {v3, p0, v1, v0, p2}, Landroid/webkit/WebViewClassic$6;-><init>(Landroid/webkit/WebViewClassic;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2382
    const-string/jumbo v2, "scrollX"

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2383
    const-string/jumbo v2, "scrollY"

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2384
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2, p1}, Landroid/webkit/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    .line 2385
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10
    .parameter "outState"

    .prologue
    const/4 v7, 0x0

    .line 2299
    if-nez p1, :cond_0

    move-object v5, v7

    .line 2341
    :goto_0
    return-object v5

    .line 2304
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 2305
    .local v5, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 2306
    .local v0, currentIndex:I
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v6

    .line 2309
    .local v6, size:I
    if-ltz v0, :cond_1

    if-ge v0, v6, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move-object v5, v7

    .line 2310
    goto :goto_0

    .line 2312
    :cond_2
    const-string v8, "index"

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2317
    .local v2, history:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_5

    .line 2318
    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    .line 2319
    .local v4, item:Landroid/webkit/WebHistoryItem;
    if-nez v4, :cond_3

    .line 2322
    const-string/jumbo v8, "webview"

    const-string/jumbo v9, "saveState: Unexpected null history item."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 2323
    goto :goto_0

    .line 2325
    :cond_3
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    .line 2326
    .local v1, data:[B
    if-nez v1, :cond_4

    move-object v5, v7

    .line 2330
    goto :goto_0

    .line 2332
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2317
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2334
    .end local v1           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_5
    const-string v7, "history"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2335
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v7, :cond_6

    .line 2336
    const-string v7, "certificate"

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v8}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2339
    :cond_6
    const-string/jumbo v7, "privateBrowsingEnabled"

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isPrivateBrowsingEnabled()Z

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2340
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7, p1}, Landroid/webkit/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public saveViewState(Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V
    .locals 3
    .parameter "stream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2458
    .local p2, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 2459
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 2464
    :goto_0
    return-void

    .line 2462
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xe1

    new-instance v2, Landroid/webkit/WebViewCore$SaveViewStateRequest;

    invoke-direct {v2, p1, p2}, Landroid/webkit/WebViewCore$SaveViewStateRequest;-><init>(Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"

    .prologue
    .line 2663
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/WebViewClassic;->saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 2664
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 0
    .parameter "basename"
    .parameter "autoname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2684
    .local p3, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 2685
    return-void
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 5563
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5564
    return-void
.end method

.method public selectText()Z
    .locals 4

    .prologue
    .line 4706
    iget v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 4707
    .local v0, x:I
    iget v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    .line 4708
    .local v1, y:I
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebViewClassic;->selectText(II)Z

    move-result v2

    return v2
.end method

.method selectText(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4715
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 4716
    const/4 v0, 0x0

    .line 4719
    :goto_0
    return v0

    .line 4718
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4719
    const/4 v0, 0x1

    goto :goto_0
.end method

.method selectionDone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5570
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_1

    .line 5571
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hidePasteButton()V

    .line 5572
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->endSelectingText()V

    .line 5575
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    if-eqz v0, :cond_0

    .line 5576
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/SelectActionModeCallback;->finish()V

    .line 5577
    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    .line 5579
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 5580
    iput v1, p0, Landroid/webkit/WebViewClassic;->mAutoScrollX:I

    .line 5581
    iput v1, p0, Landroid/webkit/WebViewClassic;->mAutoScrollY:I

    .line 5582
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z

    .line 5584
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-nez v0, :cond_1

    .line 5585
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 5589
    :cond_1
    return-void
.end method

.method sendBatchableInputMessage(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 8430
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_0

    .line 8439
    :goto_0
    return-void

    .line 8433
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8434
    .local v0, message:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    if-eqz v1, :cond_1

    .line 8435
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8437
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method sendOurVisibleRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/16 v3, 0x6b

    .line 3219
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isPreventingWebkitUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 3247
    :goto_0
    return-object v0

    .line 3220
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 3222
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3223
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_1

    .line 3224
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 3225
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v3}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 3226
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSendScrollEvent:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v0, v2}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    .line 3229
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3230
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3232
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3242
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_3

    .line 3243
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x74

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3245
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mLastGlobalRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3247
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 3226
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method sendViewSizeZoom(Z)Z
    .locals 12
    .parameter "force"

    .prologue
    const/16 v11, 0x69

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3323
    iget-boolean v9, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v9, :cond_1

    .line 3410
    :cond_0
    :goto_0
    return v7

    .line 3324
    :cond_1
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v9}, Landroid/webkit/ZoomManager;->isPreventingWebkitUpdates()Z

    move-result v9

    if-nez v9, :cond_0

    .line 3326
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v6

    .line 3327
    .local v6, viewWidth:I
    int-to-float v9, v6

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3329
    .local v4, newWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v10

    sub-int v5, v9, v10

    .line 3330
    .local v5, viewHeight:I
    int-to-float v9, v5

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 3333
    .local v3, newHeight:I
    int-to-float v9, v5

    int-to-float v10, v6

    div-float v2, v9, v10

    .line 3342
    .local v2, heightWidthRatio:F
    iget v9, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    if-le v4, v9, :cond_2

    iget-boolean v9, p0, Landroid/webkit/WebViewClassic;->mWrapContent:Z

    if-eqz v9, :cond_2

    .line 3343
    const/4 v3, 0x0

    .line 3344
    const/4 v2, 0x0

    .line 3348
    :cond_2
    const/4 v0, 0x0

    .line 3349
    .local v0, actualViewHeight:I
    iget-boolean v9, p0, Landroid/webkit/WebViewClassic;->mEmailUsingFlag:Z

    if-eqz v9, :cond_7

    .line 3351
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebViewClassic;->mInvScale:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3353
    iget v9, p0, Landroid/webkit/WebViewClassic;->mScale:F

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 3354
    int-to-float v9, v0

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3366
    :cond_3
    iget v9, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    if-le v4, v9, :cond_4

    iget-boolean v9, p0, Landroid/webkit/WebViewClassic;->mWrapContent:Z

    if-eqz v9, :cond_4

    .line 3367
    const/4 v0, 0x1

    .line 3375
    :cond_4
    :goto_1
    iget v9, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    if-ne v4, v9, :cond_5

    iget v9, p0, Landroid/webkit/WebViewClassic;->mLastHeightSent:I

    if-ne v3, v9, :cond_5

    if-nez p1, :cond_5

    iget v9, p0, Landroid/webkit/WebViewClassic;->mLastActualHeightSent:I

    if-eq v0, v9, :cond_0

    .line 3377
    :cond_5
    new-instance v1, Landroid/webkit/WebViewClassic$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebViewClassic$ViewSizeData;-><init>()V

    .line 3378
    .local v1, data:Landroid/webkit/WebViewClassic$ViewSizeData;
    iput v4, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mWidth:I

    .line 3379
    iput v3, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mHeight:I

    .line 3380
    iput v2, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mHeightWidthRatio:F

    .line 3381
    iput v0, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mActualViewHeight:I

    .line 3382
    int-to-float v9, v6

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v10

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    .line 3383
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v9}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v9

    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mScale:F

    .line 3384
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v9}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-nez v9, :cond_6

    move v7, v8

    :cond_6
    iput-boolean v7, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mIgnoreHeight:Z

    .line 3386
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getDocumentAnchorX()I

    move-result v7

    iput v7, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mAnchorX:I

    .line 3387
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getDocumentAnchorY()I

    move-result v7

    iput v7, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mAnchorY:I

    .line 3389
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v7, v11}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 3393
    iget-boolean v7, p0, Landroid/webkit/WebViewClassic;->mEmailUsingFlag:Z

    if-eqz v7, :cond_8

    .line 3396
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0xe7

    iget v10, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mWidth:I

    iget v11, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mActualViewHeight:I

    invoke-virtual {v7, v9, v10, v11}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3402
    :goto_2
    iput v4, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    .line 3403
    iput v3, p0, Landroid/webkit/WebViewClassic;->mLastHeightSent:I

    .line 3404
    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastActualHeightSent:I

    .line 3405
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->clearDocumentAnchor()V

    .line 3407
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    move v7, v8

    .line 3408
    goto/16 :goto_0

    .line 3371
    .end local v1           #data:Landroid/webkit/WebViewClassic$ViewSizeData;
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_1

    .line 3399
    .restart local v1       #data:Landroid/webkit/WebViewClassic$ViewSizeData;
    :cond_8
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v7, v11, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method setActive(Z)V
    .locals 3
    .parameter "active"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5729
    if-eqz p1, :cond_1

    .line 5730
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5733
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 5734
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    .line 5755
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 5756
    return-void

    .line 5736
    :cond_0
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 5737
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    goto :goto_0

    .line 5740
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isZoomPickerVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5748
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 5750
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 5751
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5752
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 5753
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 8853
    iput p1, p0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    .line 8854
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 8855
    return-void
.end method

.method setBaseLayer(IZZ)V
    .locals 7
    .parameter "layer"
    .parameter "showVisualIndicator"
    .parameter "isPictureAfterFirstLayout"

    .prologue
    .line 4767
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_1

    .line 4785
    :cond_0
    :goto_0
    return-void

    .line 4770
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    iget v5, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    .line 4772
    .local v5, scrollingLayer:I
    :goto_1
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->nativeSetBaseLayer(IIZZI)Z

    move-result v6

    .line 4776
    .local v6, queueFull:Z
    if-eqz v6, :cond_3

    .line 4777
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->pauseWebKitDraw()V

    .line 4782
    :goto_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 4783
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoViewProxy;->setBaseLayer(I)V

    goto :goto_0

    .line 4770
    .end local v5           #scrollingLayer:I
    .end local v6           #queueFull:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 4779
    .restart local v5       #scrollingLayer:I
    .restart local v6       #queueFull:Z
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->resumeWebKitDraw()V

    goto :goto_2
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 2100
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    .line 2101
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 4327
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 4328
    return-void
.end method

.method public setFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3791
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;

    .line 3792
    return-void
.end method

.method setFocusControllerActive(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/4 v1, 0x0

    .line 5801
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    .line 5808
    :cond_0
    :goto_0
    return-void

    .line 5802
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x8e

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5804
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mListBoxMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 5805
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mListBoxMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 5806
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mListBoxMessage:Landroid/os/Message;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 5802
    goto :goto_1
.end method

.method public setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5878
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/webkit/WebView$PrivateAccess;->super_setFrame(IIII)Z

    move-result v0

    .line 5879
    .local v0, changed:Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-eqz v1, :cond_0

    .line 5886
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    .line 5888
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->updateRectsForGL()V

    .line 5889
    return v0
.end method

.method public setHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 8871
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 8872
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 1978
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    .line 1979
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 2121
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewDatabaseClassic;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .parameter "scaleInPercent"

    .prologue
    .line 2913
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->setInitialScaleInPercent(I)V

    .line 2914
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 2272
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2273
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .parameter "layerType"
    .parameter "paint"

    .prologue
    .line 8919
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateHwAccelerated()V

    .line 8920
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 4657
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 4658
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mWrapContent:Z

    .line 4660
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$PrivateAccess;->super_setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4661
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0
    .parameter "setMap"

    .prologue
    .line 6829
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mMapTrackballToArrowKeys:Z

    .line 6830
    return-void
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10
    .parameter "canProvideAlpha"
    .parameter "alpha"
    .parameter "canProvideBeta"
    .parameter "beta"
    .parameter "canProvideGamma"
    .parameter "gamma"

    .prologue
    .line 5168
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebViewCore;->setMockDeviceOrientation(ZDZDZD)V

    .line 5170
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 4
    .parameter "networkUp"

    .prologue
    const/4 v1, 0x0

    .line 2280
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x77

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2282
    return-void

    :cond_0
    move v0, v1

    .line 2280
    goto :goto_0
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 2288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2289
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    const-string/jumbo v1, "subtype"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2291
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xb7

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2292
    return-void
.end method

.method setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V
    .locals 13
    .parameter "draw"
    .parameter "updateBaseLayer"

    .prologue
    .line 8258
    iget v9, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v9, :cond_2

    .line 8259
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    if-eqz v9, :cond_0

    .line 8260
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Tried to setNewPicture with a delay picture already set! (memory leak)"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 8264
    :cond_0
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    .line 8356
    :cond_1
    :goto_0
    return-void

    .line 8267
    :cond_2
    iget-object v8, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 8268
    .local v8, viewState:Landroid/webkit/WebViewCore$ViewState;
    if-eqz v8, :cond_d

    const/4 v2, 0x1

    .line 8271
    .local v2, isPictureAfterFirstLayout:Z
    :goto_1
    iget-boolean v9, p0, Landroid/webkit/WebViewClassic;->mEmailUsingFlag:Z

    if-eqz v9, :cond_3

    .line 8272
    if-eqz v2, :cond_3

    iget-object v9, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget v10, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    if-ne v9, v10, :cond_3

    iget-object v9, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Landroid/webkit/WebViewClassic;->mLastHeightSent:I

    if-ne v9, v10, :cond_3

    iget v9, v8, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v10

    cmpl-float v9, v9, v10

    if-nez v9, :cond_3

    .line 8276
    const/4 v2, 0x0

    .line 8280
    :cond_3
    if-eqz p2, :cond_4

    .line 8281
    iget v9, p1, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebSettingsClassic;->getShowVisualIndicator()Z

    move-result v10

    invoke-virtual {p0, v9, v10, v2}, Landroid/webkit/WebViewClassic;->setBaseLayer(IZZ)V

    .line 8285
    :cond_4
    iget-object v7, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 8290
    .local v7, viewSize:Landroid/graphics/Point;
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    if-ne v9, v10, :cond_e

    iget v9, v7, Landroid/graphics/Point;->y:I

    iget v10, p0, Landroid/webkit/WebViewClassic;->mLastHeightSent:I

    if-ne v9, v10, :cond_e

    const/4 v5, 0x1

    .line 8295
    .local v5, updateLayout:Z
    :goto_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebViewClassic;->mSendScrollEvent:Z

    .line 8296
    iget-object v9, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v9, v10, v5}, Landroid/webkit/WebViewClassic;->recordNewContentSize(IIZ)V

    .line 8298
    if-eqz v2, :cond_5

    .line 8300
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    .line 8301
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v9, p1}, Landroid/webkit/ZoomManager;->onFirstLayout(Landroid/webkit/WebViewCore$DrawData;)V

    .line 8302
    iget-boolean v9, v8, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    if-eqz v9, :cond_f

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v3

    .line 8304
    .local v3, scrollX:I
    :goto_3
    iget v4, v8, Landroid/webkit/WebViewCore$ViewState;->mScrollY:I

    .line 8305
    .local v4, scrollY:I
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V

    .line 8306
    iget-boolean v9, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-nez v9, :cond_5

    .line 8308
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V

    .line 8311
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebViewClassic;->mSendScrollEvent:Z

    .line 8313
    const/4 v1, 0x0

    .line 8314
    .local v1, functor:I
    move v0, v2

    .line 8315
    .local v0, forceInval:Z
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    .line 8316
    .local v6, viewRoot:Landroid/view/ViewRootImpl;
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v6, :cond_6

    .line 8317
    iget v9, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v9}, Landroid/webkit/WebViewClassic;->nativeGetDrawGLFunction(I)I

    move-result v1

    .line 8318
    if-eqz v1, :cond_6

    .line 8320
    invoke-virtual {v6, v1}, Landroid/view/ViewRootImpl;->attachFunctor(I)Z

    move-result v9

    if-nez v9, :cond_10

    const/4 v9, 0x1

    :goto_4
    or-int/2addr v0, v9

    .line 8324
    :cond_6
    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getLayerType()I

    move-result v9

    if-eqz v9, :cond_8

    .line 8329
    :cond_7
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->invalidate()V

    .line 8333
    :cond_8
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v9, p1}, Landroid/webkit/ZoomManager;->onNewPicture(Landroid/webkit/WebViewCore$DrawData;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 8334
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 8336
    :cond_9
    if-eqz v2, :cond_a

    .line 8337
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v9}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    .line 8339
    :cond_a
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->scrollEditWithCursor()V

    .line 8342
    const-string v9, "Display_Email_Content"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 8343
    const-string/jumbo v9, "webview"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Performance test][Email] Display email content end ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8348
    :cond_b
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    if-eqz v9, :cond_1

    .line 8349
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getLayerType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 8353
    :cond_c
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    goto/16 :goto_0

    .line 8268
    .end local v0           #forceInval:Z
    .end local v1           #functor:I
    .end local v2           #isPictureAfterFirstLayout:Z
    .end local v5           #updateLayout:Z
    .end local v6           #viewRoot:Landroid/view/ViewRootImpl;
    .end local v7           #viewSize:Landroid/graphics/Point;
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 8290
    .restart local v2       #isPictureAfterFirstLayout:Z
    .restart local v7       #viewSize:Landroid/graphics/Point;
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 8302
    .restart local v5       #updateLayout:Z
    :cond_f
    iget v3, v8, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    goto/16 :goto_3

    .line 8320
    .restart local v0       #forceInval:Z
    .restart local v1       #functor:I
    .restart local v6       #viewRoot:Landroid/view/ViewRootImpl;
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_4
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1863
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1864
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-nez v0, :cond_0

    .line 1865
    new-instance v0, Landroid/webkit/OverScrollGlow;

    invoke-direct {v0, p0}, Landroid/webkit/OverScrollGlow;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    .line 1870
    :cond_0
    :goto_0
    return-void

    .line 1868
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    goto :goto_0
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 0
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4371
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 4372
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 1965
    const/high16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x300

    if-ne p1, v0, :cond_1

    .line 1967
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    .line 1971
    :goto_0
    return-void

    .line 1969
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    goto :goto_0
.end method

.method setScrollXRaw(I)V
    .locals 1
    .parameter "mScrollX"

    .prologue
    .line 1530
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$PrivateAccess;->setScrollXRaw(I)V

    .line 1531
    return-void
.end method

.method setScrollYRaw(I)V
    .locals 1
    .parameter "mScrollY"

    .prologue
    .line 1534
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$PrivateAccess;->setScrollYRaw(I)V

    .line 1535
    return-void
.end method

.method setSelection(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 4986
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 4987
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4989
    :cond_0
    return-void
.end method

.method public setTouchInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 8881
    iput p1, p0, Landroid/webkit/WebViewClassic;->mCurrentTouchInterval:I

    .line 8882
    return-void
.end method

.method public setUseMockDeviceOrientation()V
    .locals 2

    .prologue
    .line 5158
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5159
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 1986
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    .line 1987
    return-void
.end method

.method public setVisibleParameterForEmail(IIZI)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "isOver"
    .parameter "topY"

    .prologue
    .line 9031
    iput-boolean p3, p0, Landroid/webkit/WebViewClassic;->mIsOver:Z

    .line 9032
    iput p4, p0, Landroid/webkit/WebViewClassic;->mTopY:I

    .line 9033
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mWidth:I

    .line 9034
    int-to-float v0, p2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHeight:I

    .line 9035
    return-void
.end method

.method public setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 4355
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 4356
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 4335
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 4336
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 4309
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4310
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 1763
    const/4 v0, 0x1

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "text"
    .parameter "showIme"

    .prologue
    const/4 v1, 0x1

    .line 3869
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mEmailUsingFlag:Z

    if-eqz v2, :cond_0

    .line 3870
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xe7

    iget v4, p0, Landroid/webkit/WebViewClassic;->mWidth:I

    iget v5, p0, Landroid/webkit/WebViewClassic;->mHeight:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3874
    :cond_0
    new-instance v0, Landroid/webkit/FindActionModeCallback;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/webkit/FindActionModeCallback;-><init>(Landroid/content/Context;)V

    .line 3875
    .local v0, callback:Landroid/webkit/FindActionModeCallback;
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_3

    .line 3877
    :cond_1
    const/4 v1, 0x0

    .line 3897
    :cond_2
    :goto_0
    return v1

    .line 3879
    :cond_3
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 3880
    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    .line 3881
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->setFindIsUp(Z)V

    .line 3882
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p0}, Landroid/webkit/FindActionModeCallback;->setWebView(Landroid/webkit/WebViewClassic;)V

    .line 3883
    if-eqz p2, :cond_6

    .line 3884
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->showSoftInput()V

    .line 3890
    :cond_4
    if-nez p1, :cond_5

    .line 3891
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    if-nez v2, :cond_7

    const/4 p1, 0x0

    .line 3893
    :cond_5
    :goto_1
    if-eqz p1, :cond_2

    .line 3894
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p1}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 3895
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->findAll()V

    goto :goto_0

    .line 3885
    :cond_6
    if-eqz p1, :cond_4

    .line 3886
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p1}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 3887
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->findAll()V

    goto :goto_0

    .line 3891
    :cond_7
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    iget-object p1, v2, Landroid/webkit/WebViewCore$FindAllRequest;->mSearchText:Ljava/lang/String;

    goto :goto_1
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 2700
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 2701
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2702
    return-void
.end method

.method public stopScroll()V
    .locals 2

    .prologue
    .line 4024
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 4025
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    .line 4026
    return-void
.end method

.method switchOutDrawHistory()V
    .locals 5

    .prologue
    .line 4947
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_1

    .line 4962
    :cond_0
    :goto_0
    return-void

    .line 4948
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeHasContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4949
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    .line 4950
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    .line 4951
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 4952
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    .line 4953
    .local v0, oldScrollX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    .line 4954
    .local v1, oldScrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setScrollXRaw(I)V

    .line 4955
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setScrollYRaw(I)V

    .line 4956
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 4957
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/webkit/WebView$PrivateAccess;->onScrollChanged(IIII)V

    goto :goto_0

    .line 4959
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public tileProfilingClear()V
    .locals 0

    .prologue
    .line 8958
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeTileProfilingClear()V

    .line 8959
    return-void
.end method

.method public tileProfilingGetFloat(IILjava/lang/String;)F
    .locals 1
    .parameter "frame"
    .parameter "tile"
    .parameter "key"

    .prologue
    .line 8974
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->nativeTileProfilingGetFloat(IILjava/lang/String;)F

    move-result v0

    return v0
.end method

.method public tileProfilingGetInt(IILjava/lang/String;)I
    .locals 1
    .parameter "frame"
    .parameter "tile"
    .parameter "key"

    .prologue
    .line 8970
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->nativeTileProfilingGetInt(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public tileProfilingNumFrames()I
    .locals 1

    .prologue
    .line 8962
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeTileProfilingNumFrames()I

    move-result v0

    return v0
.end method

.method public tileProfilingNumTilesInFrame(I)I
    .locals 1
    .parameter "frame"

    .prologue
    .line 8966
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->nativeTileProfilingNumTilesInFrame(I)I

    move-result v0

    return v0
.end method

.method public tileProfilingStart()V
    .locals 0

    .prologue
    .line 8945
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeTileProfilingStart()V

    .line 8946
    return-void
.end method

.method public tileProfilingStop()F
    .locals 1

    .prologue
    .line 8953
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeTileProfilingStop()F

    move-result v0

    return v0
.end method

.method updateDefaultZoomDensity(F)V
    .locals 1
    .parameter "density"

    .prologue
    .line 1879
    const/high16 v0, 0x4180

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    .line 1880
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    .line 1881
    return-void
.end method

.method updateDoubleTapZoom(I)V
    .locals 1
    .parameter "doubleTapZoom"

    .prologue
    .line 3417
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateDoubleTapZoom(I)V

    .line 3418
    return-void
.end method

.method updateDrawingState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3652
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 3660
    :cond_0
    :goto_0
    return-void

    .line 3653
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3654
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    goto :goto_0

    .line 3655
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3656
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    goto :goto_0

    .line 3658
    :cond_3
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    goto :goto_0
.end method

.method updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1720
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 1721
    return-void
.end method

.method updatePageVisibilityState(II)V
    .locals 4
    .parameter "wv"
    .parameter "vv"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0xe6

    .line 3679
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 3696
    :goto_0
    return-void

    .line 3688
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 3689
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 3690
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 3691
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mPageVisibile:Z

    goto :goto_0

    .line 3693
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 3694
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mPageVisibile:Z

    goto :goto_0
.end method

.method updateRectsForGL()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 5839
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v9

    .line 5840
    .local v9, visible:Z
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5841
    if-eqz v9, :cond_0

    .line 5843
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 5844
    .local v6, rootView:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 5845
    .local v7, rootViewHeight:I
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5846
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 5847
    .local v8, savedWebViewBottom:I
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v7, v2

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 5848
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    sub-int v2, v7, v8

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 5849
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    .line 5854
    .end local v6           #rootView:Landroid/view/View;
    .end local v7           #rootViewHeight:I
    .end local v8           #savedWebViewBottom:I
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 5855
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentVisibleRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 5857
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    :goto_1
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    :goto_2
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->nativeUpdateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;F)V

    .line 5860
    return-void

    .line 5851
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 5857
    goto :goto_1

    :cond_2
    move-object v3, v0

    goto :goto_2
.end method

.method updateScrollCoordinates(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    .line 7042
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    .line 7043
    .local v0, oldX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    .line 7045
    .local v1, oldY:I
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mEmailUsingFlag:Z

    if-eqz v6, :cond_3

    if-eq p2, v1, :cond_3

    .line 7049
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 7050
    .local v2, parent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v2, :cond_3

    .line 7051
    instance-of v6, v2, Landroid/widget/ScrollView;

    if-eqz v6, :cond_1

    move-object v4, v2

    .line 7052
    check-cast v4, Landroid/widget/ScrollView;

    .line 7053
    .local v4, scrView:Landroid/widget/ScrollView;
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->requestLayout()V

    .line 7054
    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    add-int/2addr v7, p2

    invoke-virtual {v4, v6, v7}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 7055
    if-eq v0, p1, :cond_0

    .line 7056
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->setScrollXRaw(I)V

    .line 7076
    .end local v2           #parent:Landroid/view/ViewParent;
    .end local v4           #scrView:Landroid/widget/ScrollView;
    :cond_0
    :goto_1
    return v5

    .line 7061
    .restart local v2       #parent:Landroid/view/ViewParent;
    :cond_1
    instance-of v6, v2, Landroid/view/View;

    if-eqz v6, :cond_2

    move-object v3, v2

    .line 7062
    check-cast v3, Landroid/view/View;

    .line 7063
    .local v3, parentView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 7064
    goto :goto_0

    .line 7065
    .end local v3           #parentView:Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 7070
    .end local v2           #parent:Landroid/view/ViewParent;
    :cond_3
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->setScrollXRaw(I)V

    .line 7071
    invoke-virtual {p0, p2}, Landroid/webkit/WebViewClassic;->setScrollYRaw(I)V

    .line 7072
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    if-ne v0, v6, :cond_4

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    if-eq v1, v6, :cond_5

    .line 7073
    :cond_4
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v8

    invoke-virtual {v6, v7, v8, v0, v1}, Landroid/webkit/WebView$PrivateAccess;->onScrollChanged(IIII)V

    goto :goto_1

    .line 7076
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method viewToContentX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 3071
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 3080
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 7242
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 7250
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->zoomOut()Z

    move-result v0

    return v0
.end method
