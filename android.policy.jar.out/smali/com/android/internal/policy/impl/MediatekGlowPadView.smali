.class public Lcom/android/internal/policy/impl/MediatekGlowPadView;
.super Landroid/view/View;
.source "MediatekGlowPadView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;,
        Lcom/android/internal/policy/impl/MediatekGlowPadView$IntersectAnimationRunnable;,
        Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;,
        Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;,
        Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final ANIM_TOUCH_STLOP:I = 0x3

.field private static final CALL_LOG_CLASS_NAME:Ljava/lang/String; = "com.android.contacts.activities.DialtactsActivity"

.field private static final CALL_LOG_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field private static final DEBUG:Z = true

.field private static final DRAG_ANIMATION_DELAY:I = 0x32

.field private static final DRAG_ANIMATION_DURATION:I = 0x15e

.field private static final DRAG_BACK_ANIMATION_DELAY:I = 0x14

.field private static final DRAG_BACK_ANIMATION_DURATION:I = 0xc8

.field private static final EMAIL_CLASS_NAME:Ljava/lang/String; = "com.android.email.activity.Welcome"

.field private static final EMAIL_PACKAGE_NAME:Ljava/lang/String; = "com.android.email"

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_SHOW_HANDLE_DURATION:I = 0xc8

.field private static final MMS_CLASS_NAME:Ljava/lang/String; = "com.android.mms.ui.ConversationList"

.field private static final MMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0xc8

.field private static final REVEAL_GLOW_DELAY:I = 0x0

.field private static final REVEAL_GLOW_DURATION:I = 0x0

.field private static final RING_SCALE_COLLAPSED:F = 0.5f

.field private static final RING_SCALE_EXPANDED:F = 1.0f

.field private static final SHOW_ANIMATION_DELAY:I = 0x32

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_START:I = 0x1

.field private static final STATE_TRACKING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediatekGlowPadView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final TARGET_SCALE_COLLAPSED:F = 0.8f

.field private static final TARGET_SCALE_EXPANDED:F = 1.0f

.field private static final TOUCH_ANIM_BACK:I = 0x6

.field private static final TOUCH_DRAGGING:I = 0x3

.field private static final TOUCH_END:I = 0x7

.field private static final TOUCH_FLING:I = 0x4

.field private static final TOUCH_HANDLE_ANIM:I = 0x1

.field private static final TOUCH_INIT:I = 0x0

.field private static final TOUCH_INTERSECT:I = 0x2

.field private static final TOUCH_MOVE_INTERSECT_ANIM_THRESHOLD:F = 10.0f

.field private static final TOUCH_MOVE_TRIGGER_THRESHOLD:I = 0x3

.field private static final TOUCH_TRIGGER:I = 0x5

.field private static final WAVE_ANIMATION_DURATION:I = 0x546


# instance fields
.field private mActionCancel:Z

.field private mActiveTarget:I

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/android/internal/policy/impl/Tweener;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCheckForInterSectAnimation:Ljava/lang/Runnable;

.field private mCurrentFakeHandleTargetX:F

.field private mCurrentFakeHandleTargetY:F

.field private mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDoingIntersectAnim:Z

.field private mDragSnapMargin:F

.field private mDragView:Lcom/android/internal/policy/impl/DragView;

.field private mDragViewAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

.field private mDragViewDoingTouch:Z

.field private mDragViewState:I

.field private mDragging:Z

.field private mFakeHandleAnimating:Z

.field private mFakeHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

.field private mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

.field private mFakeHandleDrawableOutListener:Landroid/animation/Animator$AnimatorListener;

.field private mFakeHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mFakeHandleRealX:F

.field private mFakeHandleRealY:F

.field private mFeedbackCount:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlobalLayoutListenerSet:Z

.field private mGlowAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

.field private mGlowPadViewState:I

.field private mGlowRadius:F

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

.field private mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

.field private mHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mHandlePosition:Landroid/graphics/Point;

.field private final mHistoryTouchXY:[I

.field private mHorizontalInset:I

.field private mInitDownMotionLocationX:I

.field private mInitDownMotionLocationY:I

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mIntersectAnimResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mLockScreenLayout:Lcom/android/internal/policy/impl/LockScreenLayout;

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewEventViewInLockScreenX:I

.field private mNewEventViewInLockScreenY:I

.field private final mNewEventViewLocationInLockScreen:[I

.field private mNewTargetResources:I

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOnTriggerListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/internal/policy/impl/TargetDrawable;

.field private final mOwnerDragViewOffsets:[I

.field private final mOwnerLocationInLockScreen:[I

.field private final mOwnerNewEventViewOffset:[I

.field private final mOwnerRawLocation:[I

.field private final mOwnerRecepientOffsets:[I

.field private mPendingDragViewState:I

.field private mPendingEvent:Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;

.field private final mPoint:Landroid/graphics/Point;

.field private mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mShouldDoIntersectAnim:Z

.field private mSimpleOnGestureListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;

.field private mSnapMargin:F

.field private mTapTimeOut:Z

.field private mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTempXY:[I

.field private mTouchDropped:Z

.field private mTouchIntercepted:Z

.field private mTouchMoveIntersectAnimThreshold:F

.field private mTouchMoveTriggerThreshold:I

.field private mTouchRecepient:Landroid/view/View;

.field private final mTouchRecepientRawLocation:[I

.field private mTouchSlop:I

.field private mTouchSlopSqure:I

.field private mTouchTriggered:Z

.field private mUnReadEventView:Lcom/android/internal/policy/impl/UnReadEventView;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 393
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x2

    .line 396
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 122
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;Lcom/android/internal/policy/impl/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    .line 123
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;Lcom/android/internal/policy/impl/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    .line 124
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;Lcom/android/internal/policy/impl/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    .line 132
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFeedbackCount:I

    .line 133
    iput v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVibrationDuration:I

    .line 135
    iput v11, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mActiveTarget:I

    .line 142
    iput v10, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    .line 143
    iput v10, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mSnapMargin:F

    .line 147
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mActionCancel:Z

    .line 185
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$1;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 192
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$2;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$2;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 200
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$3;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$3;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 207
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$4;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$4;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 223
    const/16 v7, 0x30

    iput v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGravity:I

    .line 224
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mInitialLayout:Z

    .line 241
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$5;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$5;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 255
    new-array v7, v9, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchRecepientRawLocation:[I

    .line 258
    new-array v7, v9, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerRawLocation:[I

    .line 262
    new-array v7, v9, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    .line 264
    new-array v7, v9, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    .line 266
    new-array v7, v9, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    .line 268
    new-array v7, v9, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    .line 276
    new-array v7, v9, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTempXY:[I

    .line 279
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    .line 283
    new-array v7, v9, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHistoryTouchXY:[I

    .line 290
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    .line 294
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$IntersectAnimationRunnable;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$IntersectAnimationRunnable;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCheckForInterSectAnimation:Ljava/lang/Runnable;

    .line 297
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;Lcom/android/internal/policy/impl/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    .line 304
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTempRect:Landroid/graphics/Rect;

    .line 307
    new-array v7, v9, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerDragViewOffsets:[I

    .line 314
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;Lcom/android/internal/policy/impl/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    .line 315
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;Lcom/android/internal/policy/impl/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    .line 317
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCanvas:Landroid/graphics/Canvas;

    .line 325
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTapTimeOut:Z

    .line 362
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;Lcom/android/internal/policy/impl/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;

    .line 1695
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$7;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$7;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawableOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 1769
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$9;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$9;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1775
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$10;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$10;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 1782
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$11;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$11;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 2030
    new-instance v7, Lcom/android/internal/policy/impl/MediatekGlowPadView$12;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$12;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mIntersectAnimResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 399
    .local v4, res:Landroid/content/res/Resources;
    sget-object v7, Lcom/android/internal/R$styleable;->GlowPadView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 400
    .local v0, a:Landroid/content/res/TypedArray;
    iget v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mInnerRadius:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mInnerRadius:F

    .line 401
    const/16 v7, 0x8

    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    .line 402
    const/16 v7, 0xa

    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mSnapMargin:F

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mSnapMargin:F

    .line 403
    const/16 v7, 0x9

    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVibrationDuration:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVibrationDuration:I

    .line 405
    const/16 v7, 0xb

    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFeedbackCount:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFeedbackCount:I

    .line 407
    new-instance v7, Lcom/android/internal/policy/impl/TargetDrawable;

    const/4 v8, 0x7

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    iget v8, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v7, v4, v8}, Lcom/android/internal/policy/impl/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    .line 409
    iget-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    sget-object v8, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    .line 410
    new-instance v7, Lcom/android/internal/policy/impl/TargetDrawable;

    const/4 v8, 0x3

    invoke-direct {p0, v0, v8}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v8

    invoke-direct {v7, v4, v8}, Lcom/android/internal/policy/impl/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/TargetDrawable;

    .line 413
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    .line 415
    const/4 v7, 0x4

    invoke-direct {p0, v0, v7}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v3

    .line 416
    .local v3, pointId:I
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 417
    .local v2, pointDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowRadius:F

    .line 419
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 422
    .local v1, outValue:Landroid/util/TypedValue;
    const/4 v7, 0x6

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 423
    iget v7, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->internalSetTargetResources(I)V

    .line 425
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 426
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Must specify at least one target drawable"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 430
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 431
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    .line 432
    .local v5, resourceId:I
    if-nez v5, :cond_4

    .line 433
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Must specify target descriptions"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 435
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 439
    .end local v5           #resourceId:I
    :cond_5
    invoke-virtual {v0, v9, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 440
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    .line 441
    .restart local v5       #resourceId:I
    if-nez v5, :cond_6

    .line 442
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Must specify direction descriptions"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 444
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 447
    .end local v5           #resourceId:I
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 450
    sget-object v7, Landroid/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 451
    const/16 v7, 0x30

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGravity:I

    .line 452
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 454
    iget v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVibrationDuration:I

    if-lez v7, :cond_8

    const/4 v6, 0x1

    :cond_8
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->setVibrateEnabled(Z)V

    .line 456
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->assignDefaultsIfNeeded()V

    .line 458
    new-instance v6, Lcom/android/internal/policy/impl/PointCloud;

    invoke-direct {v6, v2}, Lcom/android/internal/policy/impl/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

    .line 459
    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

    iget v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mInnerRadius:F

    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/impl/PointCloud;->makePointCloud(FF)V

    .line 460
    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PointCloud;->glowManager:Lcom/android/internal/policy/impl/PointCloud$GlowManager;

    iget v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowRadius:F

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/PointCloud$GlowManager;->setRadius(F)V

    .line 462
    iput v11, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    .line 463
    iput v11, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingDragViewState:I

    .line 464
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MediatekGlowPadView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Lcom/android/internal/policy/impl/PointCloud;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/MediatekGlowPadView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingDragViewState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/MediatekGlowPadView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingDragViewState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/MediatekGlowPadView;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/MediatekGlowPadView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/MediatekGlowPadView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimating:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/MediatekGlowPadView;IIIFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MediatekGlowPadView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Lcom/android/internal/policy/impl/TargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Lcom/android/internal/policy/impl/TargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragging:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/MediatekGlowPadView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mShouldDoIntersectAnim:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTapTimeOut:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/MediatekGlowPadView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTapTimeOut:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchTriggered:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MediatekGlowPadView;IFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MediatekGlowPadView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/MediatekGlowPadView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MediatekGlowPadView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MediatekGlowPadView;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->hideTargets(ZZ)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/MediatekGlowPadView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mAnimatingTargets:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->refreshPositions()V

    return-void
.end method

.method private activateHandle(II)V
    .locals 9
    .parameter "duration"
    .parameter "delay"

    .prologue
    const/4 v8, 0x1

    const v4, 0x3ecccccd

    const/high16 v7, 0x3f80

    const/4 v3, 0x0

    .line 1661
    const-string v0, "MediatekGlowPadView"

    const-string v1, "activateHandle"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    if-nez v0, :cond_0

    .line 1665
    new-instance v0, Lcom/android/internal/policy/impl/TargetDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;-><init>(Lcom/android/internal/policy/impl/TargetDrawable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    .line 1666
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x202005c

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1670
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/TargetDrawable;->setAlpha(F)V

    .line 1671
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/TargetDrawable;->setScaleX(F)V

    .line 1672
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/TargetDrawable;->setScaleY(F)V

    .line 1673
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    iget v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->setPositionX(F)V

    .line 1674
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    iget v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->setPositionY(F)V

    .line 1675
    iput v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 1676
    iput v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealY:F

    .line 1678
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    .line 1679
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/TargetDrawable;->setAlpha(F)V

    .line 1680
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/TargetDrawable;->setScaleX(F)V

    .line 1681
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/TargetDrawable;->setScaleY(F)V

    .line 1683
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 1684
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    div-int/lit8 v2, p1, 0x2

    int-to-long v2, v2

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    sget-object v5, Lcom/android/internal/policy/impl/Ease$Fling;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "scaleX"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "scaleY"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawableOutListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1692
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->start()V

    .line 1693
    return-void

    .line 1668
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/TargetDrawable;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private animDragView(IIFFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .parameter "duration"
    .parameter "delay"
    .parameter "x"
    .parameter "y"
    .parameter "onCompleteListener"

    .prologue
    .line 1642
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animDragView duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/DragView;

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 1646
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/DragView;

    int-to-long v2, p1

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/Ease$Fling;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "translationX"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "translationY"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    aput-object p5, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1653
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->start()V

    .line 1657
    :goto_0
    return-void

    .line 1655
    :cond_0
    const-string v0, "MediatekGlowPadView"

    const-string v1, "animDragView mDragView is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private animHandlerBack(II)V
    .locals 6
    .parameter "duration"
    .parameter "delay"

    .prologue
    const/4 v3, 0x0

    .line 1999
    const-string v0, "MediatekGlowPadView"

    const-string v1, "animHandlerBack"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->animDragView(IIFFLandroid/animation/Animator$AnimatorListener;)V

    .line 2001
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->deactivateHandle(II)V

    .line 2002
    return-void
.end method

.method private announceTargets()V
    .locals 8

    .prologue
    .line 1351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1352
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1353
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1354
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1355
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1356
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1358
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1359
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1362
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1363
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1365
    :cond_2
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1212
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    .line 1215
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 1216
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mSnapMargin:F

    .line 1219
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1220
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mInnerRadius:F

    .line 1222
    :cond_2
    return-void
.end method

.method private computeInsets(II)V
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, 0x0

    .line 1225
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getResolvedLayoutDirection()I

    move-result v1

    .line 1226
    .local v1, layoutDirection:I
    iget v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGravity:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1228
    .local v0, absoluteGravity:I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_0

    .line 1237
    :pswitch_0
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHorizontalInset:I

    .line 1240
    :goto_0
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 1249
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVerticalInset:I

    .line 1252
    :goto_1
    return-void

    .line 1230
    :pswitch_1
    iput v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1233
    :pswitch_2
    iput p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1242
    :sswitch_0
    iput v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1245
    :sswitch_1
    iput p2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1228
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1240
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private computeOwnerNewEventViewMotionOffset(Landroid/view/View;)V
    .locals 5
    .parameter "newEventView"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1918
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/LockScreenLayout;

    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/LockScreenLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/LockScreenLayout;->getLocationInLockScreenLayout(Landroid/view/View;[I)V

    .line 1920
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/LockScreenLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/policy/impl/LockScreenLayout;->getLocationInLockScreenLayout(Landroid/view/View;[I)V

    .line 1921
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 1922
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 1923
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeOwnerNewEventViewMotionOffset mOwnerLocationInLockScreen[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOwnerLocationInLockScreen[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNewEventViewParentLocationInLockScreen[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNewEventViewLocationInLockScreen[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOwnerNewEventViewOffset[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOwnerNewEventViewOffset[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_0
    return-void
.end method

.method private converDragViewStateCodeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 2204
    packed-switch p1, :pswitch_data_0

    .line 2222
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2206
    :pswitch_0
    const-string v0, "TOUCH_INIT"

    goto :goto_0

    .line 2208
    :pswitch_1
    const-string v0, "TOUCH_HANDLE_ANIM"

    goto :goto_0

    .line 2210
    :pswitch_2
    const-string v0, "TOUCH_INTERSECT"

    goto :goto_0

    .line 2212
    :pswitch_3
    const-string v0, "TOUCH_DRAGGING"

    goto :goto_0

    .line 2214
    :pswitch_4
    const-string v0, "TOUCH_FLING"

    goto :goto_0

    .line 2216
    :pswitch_5
    const-string v0, "TOUCH_TRIGGER"

    goto :goto_0

    .line 2218
    :pswitch_6
    const-string v0, "TOUCH_ANIM_BACK"

    goto :goto_0

    .line 2220
    :pswitch_7
    const-string v0, "TOUCH_END"

    goto :goto_0

    .line 2204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private deactivateHandle(II)V
    .locals 8
    .parameter "duration"
    .parameter "delay"

    .prologue
    const/4 v7, 0x0

    .line 1708
    const-string v0, "MediatekGlowPadView"

    const-string v1, "deactivateHandle"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 1711
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    div-int/lit8 v2, p1, 0x2

    int-to-long v2, v2

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/Ease$Fling;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "y"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-instance v6, Lcom/android/internal/policy/impl/MediatekGlowPadView$8;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/internal/policy/impl/MediatekGlowPadView$8;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;II)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1730
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->start()V

    .line 1731
    return-void
.end method

.method private deactivateTargets()V
    .locals 4

    .prologue
    .line 613
    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 614
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 615
    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/TargetDrawable;

    .line 616
    .local v2, target:Lcom/android/internal/policy/impl/TargetDrawable;
    sget-object v3, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    .end local v2           #target:Lcom/android/internal/policy/impl/TargetDrawable;
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mActiveTarget:I

    .line 619
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 636
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichTarget"

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->vibrate()V

    .line 627
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 630
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1337
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 639
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mActiveTarget:I

    .line 640
    .local v0, activeTarget:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    move v1, v2

    .line 642
    .local v1, targetHit:Z
    :goto_0
    if-eqz v1, :cond_4

    .line 643
    const-string v2, "MediatekGlowPadView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finish with target hit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->highlightSelected(I)V

    .line 648
    const/16 v2, 0x4b0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v7, v2, v6, v4}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 650
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mActionCancel:Z

    if-nez v2, :cond_0

    .line 651
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->dispatchTriggerEvent(I)V

    .line 654
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_1

    .line 656
    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 665
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mActionCancel:Z

    if-nez v2, :cond_2

    .line 666
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->setGrabbedState(I)V

    .line 669
    :cond_2
    return-void

    .end local v1           #targetHit:Z
    :cond_3
    move v1, v3

    .line 640
    goto :goto_0

    .line 660
    .restart local v1       #targetHit:Z
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v7, v3, v6, v4}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 661
    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->hideTargets(ZZ)V

    goto :goto_1
.end method

.method private doIntersectAnimation()V
    .locals 12

    .prologue
    const/16 v2, 0x32

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    .line 2006
    const-string v0, "MediatekGlowPadView"

    const-string v1, "doIntersectAnimation"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    float-to-int v1, v1

    add-int v6, v0, v1

    .line 2009
    .local v6, targetX:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    float-to-int v1, v1

    add-int v7, v0, v1

    .line 2010
    .local v7, targetY:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v0, v0, v9

    add-int/2addr v6, v0

    .line 2011
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v6, v0

    .line 2012
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v0, v0, v11

    add-int/2addr v7, v0

    .line 2013
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v7, v0

    .line 2014
    const/16 v1, 0x15e

    int-to-float v3, v6

    int-to-float v4, v7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->animDragView(IIFFLandroid/animation/Animator$AnimatorListener;)V

    .line 2016
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 2017
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    const-wide/16 v3, 0x15e

    const/16 v5, 0x12

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "ease"

    aput-object v8, v5, v9

    sget-object v8, Lcom/android/internal/policy/impl/Ease$Fling;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v8, v5, v11

    const/4 v8, 0x2

    const-string v9, "delay"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x4

    const-string v8, "x"

    aput-object v8, v5, v2

    const/4 v2, 0x5

    iget-object v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/4 v2, 0x6

    const-string v8, "y"

    aput-object v8, v5, v2

    const/4 v2, 0x7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0x8

    const-string v8, "scaleX"

    aput-object v8, v5, v2

    const/16 v2, 0x9

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0xa

    const-string v8, "scaleY"

    aput-object v8, v5, v2

    const/16 v2, 0xb

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0xc

    const-string v8, "alpha"

    aput-object v8, v5, v2

    const/16 v2, 0xd

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0xe

    const-string v8, "onUpdate"

    aput-object v8, v5, v2

    const/16 v2, 0xf

    iget-object v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v8, v5, v2

    const/16 v2, 0x10

    const-string v8, "onComplete"

    aput-object v8, v5, v2

    const/16 v2, 0x11

    iget-object v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mIntersectAnimResetListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v8, v5, v2

    invoke-static {v1, v3, v4, v5}, Lcom/android/internal/policy/impl/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 2027
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->start()V

    .line 2028
    return-void
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;Z)V
    .locals 3
    .parameter "v"
    .parameter "destCanvas"
    .parameter "pruneToDrawable"

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTempRect:Landroid/graphics/Rect;

    .line 2133
    .local v0, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2135
    const/4 v1, 0x0

    .line 2137
    .local v1, textVisible:Z
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 2138
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2139
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2140
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 2141
    return-void
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 472
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlowRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method private freeFling(FF)V
    .locals 6
    .parameter "velX"
    .parameter "velY"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1994
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeFling velX="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", velY="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const/4 v1, 0x6

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    .line 1996
    return-void
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1381
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1382
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1383
    const-string v0, "MediatekGlowPadView"

    const-string v1, "The number of target drawables must be equal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const/4 v0, 0x0

    .line 1388
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getResourceId(Landroid/content/res/TypedArray;I)I
    .locals 2
    .parameter "a"
    .parameter "id"

    .prologue
    .line 467
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 468
    .local v0, tv:Landroid/util/TypedValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method

.method private getScaledGlowRadiusSquared()F
    .locals 3

    .prologue
    .line 1342
    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1343
    const v1, 0x3fa66666

    iget v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowRadius:F

    mul-float v0, v1, v2

    .line 1347
    .local v0, scaledTapRadius:F
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->square(F)F

    move-result v1

    return v1

    .line 1345
    .end local v0           #scaledTapRadius:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowRadius:F

    .restart local v0       #scaledTapRadius:F
    goto :goto_0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1369
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1370
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1371
    const-string v0, "MediatekGlowPadView"

    const-string v1, "The number of target drawables must be equal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v0, 0x0

    .line 1376
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;
    .locals 7
    .parameter "zoomIn"
    .parameter "alphaFrom"
    .parameter "alphaTo"
    .parameter "scaleXFrom"
    .parameter "scaleXTo"
    .parameter "scaleYFrom"
    .parameter "scaleYTo"

    .prologue
    .line 1909
    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p2, v5, v6

    const/4 v6, 0x1

    aput p3, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1910
    .local v0, pvhAlphaZoom:Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p4, v5, v6

    const/4 v6, 0x1

    aput p5, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1911
    .local v1, pvhScaleXZoom:Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p6, v5, v6

    const/4 v6, 0x1

    aput p7, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1912
    .local v2, pvhScaleYZoom:Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1913
    .local v3, targetViewAnimation:Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x32

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1914
    return-object v3
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1057
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragging:Z

    if-eqz v0, :cond_0

    const-string v0, "MediatekGlowPadView"

    const-string v1, "** Handle CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchToState(IFF)V

    .line 1067
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1039
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1040
    .local v0, eventX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1041
    .local v1, eventY:F
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchToState(IFF)V

    .line 1042
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1043
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragging:Z

    .line 1045
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->doShakeAnimation()V

    .line 1049
    :goto_0
    return-void

    .line 1047
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updateGlowPosition(FF)V

    goto :goto_0
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 35
    .parameter "event"

    .prologue
    .line 1070
    const/4 v4, -0x1

    .line 1071
    .local v4, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 1072
    .local v10, historySize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    .line 1073
    .local v25, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TargetDrawable;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1074
    .local v15, ntargets:I
    const/16 v29, 0x0

    .line 1075
    .local v29, x:F
    const/16 v30, 0x0

    .line 1076
    .local v30, y:F
    const/4 v12, 0x0

    .local v12, k:I
    :goto_0
    add-int/lit8 v31, v10, 0x1

    move/from16 v0, v31

    if-ge v12, v0, :cond_9

    .line 1077
    if-ge v12, v10, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v8

    .line 1078
    .local v8, eventX:F
    :goto_1
    if-ge v12, v10, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v9

    .line 1080
    .local v9, eventY:F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    move/from16 v31, v0

    sub-float v27, v8, v31

    .line 1081
    .local v27, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    move/from16 v31, v0

    sub-float v28, v9, v31

    .line 1082
    .local v28, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->dist2(FF)F

    move-result v31

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v31

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v26, v0

    .line 1083
    .local v26, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    move/from16 v31, v0

    cmpl-float v31, v26, v31

    if-lez v31, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    move/from16 v31, v0

    div-float v16, v31, v26

    .line 1084
    .local v16, scale:F
    :goto_3
    mul-float v13, v27, v16

    .line 1085
    .local v13, limitX:F
    mul-float v14, v28, v16

    .line 1086
    .local v14, limitY:F
    move/from16 v0, v28

    neg-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 1088
    .local v6, angleRad:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragging:Z

    move/from16 v31, v0

    if-nez v31, :cond_0

    .line 1089
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 1092
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragging:Z

    move/from16 v31, v0

    if-eqz v31, :cond_8

    .line 1094
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mSnapMargin:F

    move/from16 v32, v0

    sub-float v18, v31, v32

    .line 1095
    .local v18, snapRadius:F
    mul-float v17, v18, v18

    .line 1097
    .local v17, snapDistance2:F
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4
    if-ge v11, v15, :cond_8

    .line 1098
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/TargetDrawable;

    .line 1100
    .local v19, target:Lcom/android/internal/policy/impl/TargetDrawable;
    int-to-double v0, v11

    move-wide/from16 v31, v0

    const-wide/high16 v33, 0x3fe0

    sub-double v31, v31, v33

    const-wide/high16 v33, 0x4000

    mul-double v31, v31, v33

    const-wide v33, 0x400921fb54442d18L

    mul-double v31, v31, v33

    int-to-double v0, v15

    move-wide/from16 v33, v0

    div-double v23, v31, v33

    .line 1101
    .local v23, targetMinRad:D
    int-to-double v0, v11

    move-wide/from16 v31, v0

    const-wide/high16 v33, 0x3fe0

    add-double v31, v31, v33

    const-wide/high16 v33, 0x4000

    mul-double v31, v31, v33

    const-wide v33, 0x400921fb54442d18L

    mul-double v31, v31, v33

    int-to-double v0, v15

    move-wide/from16 v33, v0

    div-double v21, v31, v33

    .line 1102
    .local v21, targetMaxRad:D
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/impl/TargetDrawable;->isEnabled()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 1103
    cmpl-double v31, v6, v23

    if-lez v31, :cond_1

    cmpg-double v31, v6, v21

    if-lez v31, :cond_2

    :cond_1
    const-wide v31, 0x401921fb54442d18L

    add-double v31, v31, v6

    cmpl-double v31, v31, v23

    if-lez v31, :cond_7

    const-wide v31, 0x401921fb54442d18L

    add-double v31, v31, v6

    cmpg-double v31, v31, v21

    if-gtz v31, :cond_7

    :cond_2
    const/4 v5, 0x1

    .line 1107
    .local v5, angleMatches:Z
    :goto_5
    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->dist2(FF)F

    move-result v31

    cmpl-float v31, v31, v17

    if-lez v31, :cond_3

    .line 1108
    move v4, v11

    .line 1097
    .end local v5           #angleMatches:Z
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1077
    .end local v6           #angleRad:D
    .end local v8           #eventX:F
    .end local v9           #eventY:F
    .end local v11           #i:I
    .end local v13           #limitX:F
    .end local v14           #limitY:F
    .end local v16           #scale:F
    .end local v17           #snapDistance2:F
    .end local v18           #snapRadius:F
    .end local v19           #target:Lcom/android/internal/policy/impl/TargetDrawable;
    .end local v21           #targetMaxRad:D
    .end local v23           #targetMinRad:D
    .end local v26           #touchRadius:F
    .end local v27           #tx:F
    .end local v28           #ty:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    goto/16 :goto_1

    .line 1078
    .restart local v8       #eventX:F
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    goto/16 :goto_2

    .line 1083
    .restart local v9       #eventY:F
    .restart local v26       #touchRadius:F
    .restart local v27       #tx:F
    .restart local v28       #ty:F
    :cond_6
    const/high16 v16, 0x3f80

    goto/16 :goto_3

    .line 1103
    .restart local v6       #angleRad:D
    .restart local v11       #i:I
    .restart local v13       #limitX:F
    .restart local v14       #limitY:F
    .restart local v16       #scale:F
    .restart local v17       #snapDistance2:F
    .restart local v18       #snapRadius:F
    .restart local v19       #target:Lcom/android/internal/policy/impl/TargetDrawable;
    .restart local v21       #targetMaxRad:D
    .restart local v23       #targetMinRad:D
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 1113
    .end local v11           #i:I
    .end local v17           #snapDistance2:F
    .end local v18           #snapRadius:F
    .end local v19           #target:Lcom/android/internal/policy/impl/TargetDrawable;
    .end local v21           #targetMaxRad:D
    .end local v23           #targetMinRad:D
    :cond_8
    move/from16 v29, v13

    .line 1114
    move/from16 v30, v14

    .line 1076
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1117
    .end local v6           #angleRad:D
    .end local v8           #eventX:F
    .end local v9           #eventY:F
    .end local v13           #limitX:F
    .end local v14           #limitY:F
    .end local v16           #scale:F
    .end local v26           #touchRadius:F
    .end local v27           #tx:F
    .end local v28           #ty:F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragging:Z

    move/from16 v31, v0

    if-nez v31, :cond_a

    .line 1150
    :goto_6
    return-void

    .line 1121
    :cond_a
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v4, v0, :cond_e

    .line 1122
    const/16 v31, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchToState(IFF)V

    .line 1123
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updateGlowPosition(FF)V

    .line 1129
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mActiveTarget:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v4, :cond_d

    .line 1131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mActiveTarget:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_b

    .line 1132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mActiveTarget:I

    move/from16 v31, v0

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/TargetDrawable;

    .line 1133
    .restart local v19       #target:Lcom/android/internal/policy/impl/TargetDrawable;
    sget-object v31, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->hasState([I)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 1134
    sget-object v31, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    .line 1138
    .end local v19           #target:Lcom/android/internal/policy/impl/TargetDrawable;
    :cond_b
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v4, v0, :cond_d

    .line 1139
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/TargetDrawable;

    .line 1140
    .restart local v19       #target:Lcom/android/internal/policy/impl/TargetDrawable;
    sget-object v31, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->hasState([I)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 1141
    sget-object v31, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    .line 1143
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v31

    if-eqz v31, :cond_d

    .line 1144
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v20

    .line 1145
    .local v20, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1149
    .end local v19           #target:Lcom/android/internal/policy/impl/TargetDrawable;
    .end local v20           #targetContentDescription:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mActiveTarget:I

    goto/16 :goto_6

    .line 1125
    :cond_e
    const/16 v31, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchToState(IFF)V

    .line 1126
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updateGlowPosition(FF)V

    goto/16 :goto_7
.end method

.method private handleTouchCancel(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2054
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 2055
    return-void
.end method

.method private handleTrigger(Lcom/android/internal/policy/impl/LockScreenNewEventView;)V
    .locals 5
    .parameter "newEventView"

    .prologue
    .line 2068
    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;

    if-eqz v2, :cond_0

    .line 2069
    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 2071
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2072
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getResourceId()I

    move-result v1

    .line 2073
    .local v1, resourceId:I
    packed-switch v1, :pswitch_data_0

    .line 2087
    const-string v2, "MediatekGlowPadView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTrigger unknown resource id, resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    :goto_0
    return-void

    .line 2075
    :pswitch_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.ConversationList"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2076
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->launchActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2079
    :pswitch_1
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.contacts"

    const-string v4, "com.android.contacts.activities.DialtactsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2080
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->launchActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2083
    :pswitch_2
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.email"

    const-string v4, "com.android.email.activity.Welcome"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2084
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->launchActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2073
    nop

    :pswitch_data_0
    .packed-switch 0x2020061
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1052
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragging:Z

    if-eqz v0, :cond_0

    const-string v0, "MediatekGlowPadView"

    const-string v1, "** Handle RELEASE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchToState(IFF)V

    .line 1054
    return-void
.end method

.method private hideAllNewEventViews()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 1877
    const-string v0, "MediatekGlowPadView"

    const-string v1, "hideAllNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1880
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 1881
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/LockScreenNewEventView;

    .line 1882
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;
    const/4 v1, 0x1

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 1884
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1885
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 1880
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1887
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;
    :cond_0
    return-void
.end method

.method private hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 8
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    const/4 v7, 0x0

    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 601
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointCloud;->glowManager:Lcom/android/internal/policy/impl/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "y"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->start()V

    .line 610
    return-void
.end method

.method private hideOtherNewEventViews()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 1845
    const-string v0, "MediatekGlowPadView"

    const-string v1, "hideOtherNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1848
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 1849
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/LockScreenNewEventView;

    .line 1850
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    if-eq v11, v0, :cond_0

    .line 1851
    const/4 v1, 0x1

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 1853
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1854
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 1848
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1857
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;
    :cond_1
    return-void
.end method

.method private hideTargets(ZZ)V
    .locals 17
    .parameter "animate"
    .parameter "expanded"

    .prologue
    .line 686
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 689
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mAnimatingTargets:Z

    .line 690
    if-eqz p1, :cond_0

    const/16 v3, 0xc8

    .line 691
    .local v3, duration:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v2, 0xc8

    .line 693
    .local v2, delay:I
    :goto_1
    if-eqz p2, :cond_2

    const/high16 v9, 0x3f80

    .line 695
    .local v9, targetScale:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 696
    .local v6, length:I
    sget-object v5, Lcom/android/internal/policy/impl/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 697
    .local v5, interpolator:Landroid/animation/TimeInterpolator;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v6, :cond_3

    .line 698
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/policy/impl/TargetDrawable;

    .line 699
    .local v8, target:Lcom/android/internal/policy/impl/TargetDrawable;
    sget-object v10, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v10}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    .line 700
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    int-to-long v11, v3

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "ease"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    const/4 v14, 0x2

    const-string v15, "alpha"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "scaleX"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string v15, "scaleY"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string v15, "delay"

    aput-object v15, v13, v14

    const/16 v14, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xa

    const-string v15, "onUpdate"

    aput-object v15, v13, v14

    const/16 v14, 0xb

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v15, v13, v14

    invoke-static {v8, v11, v12, v13}, Lcom/android/internal/policy/impl/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 697
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 690
    .end local v2           #delay:I
    .end local v3           #duration:I
    .end local v4           #i:I
    .end local v5           #interpolator:Landroid/animation/TimeInterpolator;
    .end local v6           #length:I
    .end local v8           #target:Lcom/android/internal/policy/impl/TargetDrawable;
    .end local v9           #targetScale:F
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 691
    .restart local v3       #duration:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 693
    .restart local v2       #delay:I
    :cond_2
    const v9, 0x3f4ccccd

    goto :goto_2

    .line 709
    .restart local v4       #i:I
    .restart local v5       #interpolator:Landroid/animation/TimeInterpolator;
    .restart local v6       #length:I
    .restart local v9       #targetScale:F
    :cond_3
    if-eqz p2, :cond_4

    const/high16 v7, 0x3f80

    .line 711
    .local v7, ringScaleTarget:F
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/TargetDrawable;

    int-to-long v12, v3

    const/16 v14, 0xe

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    const/4 v15, 0x2

    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "scaleX"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "scaleY"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "delay"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string v16, "onComplete"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13, v14}, Lcom/android/internal/policy/impl/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 720
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->start()V

    .line 721
    return-void

    .line 709
    .end local v7           #ringScaleTarget:F
    :cond_4
    const/high16 v7, 0x3f00

    goto :goto_4
.end method

.method private hideUnselected(I)V
    .locals 3
    .parameter "active"

    .prologue
    .line 678
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 679
    if-eq v0, p1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/TargetDrawable;->setAlpha(F)V

    .line 678
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 683
    :cond_1
    return-void
.end method

.method private highlightSelected(I)V
    .locals 2
    .parameter "activeTarget"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    .line 674
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->hideUnselected(I)V

    .line 675
    return-void
.end method

.method private hitInCenterRing(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1611
    iget v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v2

    .line 1612
    .local v0, tx:F
    iget v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v2

    .line 1613
    .local v1, ty:F
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->dist2(FF)F

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getScaledGlowRadiusSquared()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1539
    .local v0, action:I
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchIntercepted:Z

    .line 1540
    .local v3, shouldIntercept:Z
    packed-switch v0, :pswitch_data_0

    .line 1552
    :goto_0
    :pswitch_0
    if-eqz v3, :cond_1

    .line 1553
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1556
    .local v1, containerEvent:Landroid/view/MotionEvent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    aget v5, v6, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    aget v4, v6, v4

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1557
    iget-object v4, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1558
    .local v2, retValue:Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1561
    .end local v1           #containerEvent:Landroid/view/MotionEvent;
    .end local v2           #retValue:Z
    :goto_1
    return v2

    .line 1542
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->hitInCenterRing(FF)Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    .line 1543
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->setShouldIntercept(Z)V

    goto :goto_0

    :cond_0
    move v3, v5

    .line 1542
    goto :goto_2

    .line 1547
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->setShouldIntercept(Z)V

    goto :goto_0

    :cond_1
    move v2, v5

    .line 1561
    goto :goto_1

    .line 1540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private internalSetTargetResources(I)V
    .locals 8
    .parameter "resourceId"

    .prologue
    .line 773
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 774
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TargetDrawable;>;"
    iput-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 775
    iput p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetResourceId:I

    .line 777
    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/TargetDrawable;->getWidth()I

    move-result v3

    .line 778
    .local v3, maxWidth:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/TargetDrawable;->getHeight()I

    move-result v2

    .line 779
    .local v2, maxHeight:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 780
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 781
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/TargetDrawable;

    .line 782
    .local v4, target:Lcom/android/internal/policy/impl/TargetDrawable;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/TargetDrawable;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 783
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/TargetDrawable;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 785
    .end local v4           #target:Lcom/android/internal/policy/impl/TargetDrawable;
    :cond_0
    iget v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mMaxTargetWidth:I

    if-ne v6, v3, :cond_1

    iget v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mMaxTargetHeight:I

    if-eq v6, v2, :cond_2

    .line 786
    :cond_1
    iput v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mMaxTargetWidth:I

    .line 787
    iput v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mMaxTargetHeight:I

    .line 788
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->requestLayout()V

    .line 793
    :goto_1
    return-void

    .line 790
    :cond_2
    iget v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updateTargetPositions(FF)V

    .line 791
    iget v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updatePointCloudPosition(FF)V

    goto :goto_1
.end method

.method private invlidateGlobalRegion(Landroid/view/View;)V
    .locals 9
    .parameter "childView"

    .prologue
    const/4 v6, 0x0

    .line 2038
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 2039
    .local v3, width:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2040
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2041
    .local v0, childBounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 2042
    move-object v2, p0

    .line 2043
    .local v2, view:Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 2044
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 2045
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2046
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 2051
    :cond_0
    return-void
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 2092
    const/high16 v1, 0x3400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2097
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2106
    :goto_1
    return-void

    .line 2098
    :catch_0
    move-exception v0

    .line 2099
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediatekGlowPadView"

    const-string v2, "can\'t dismiss keyguard on launch"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2103
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2104
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "MediatekGlowPadView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity not found for intent + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 6
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1393
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1394
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1395
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1396
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1397
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1399
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1400
    return-object v4
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .locals 8
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 760
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 761
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 762
    .local v1, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 763
    .local v2, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 764
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 765
    .local v6, value:Landroid/util/TypedValue;
    new-instance v5, Lcom/android/internal/policy/impl/TargetDrawable;

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    invoke-direct {v5, v4, v7}, Lcom/android/internal/policy/impl/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 766
    .local v5, target:Lcom/android/internal/policy/impl/TargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 765
    .end local v5           #target:Lcom/android/internal/policy/impl/TargetDrawable;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 768
    .end local v6           #value:Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 769
    return-object v2
.end method

.method private onDragMove(II)V
    .locals 16
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1959
    move/from16 v0, p1

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    sub-float v10, v12, v13

    .line 1960
    .local v10, tx:F
    move/from16 v0, p2

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    sub-float v11, v12, v13

    .line 1961
    .local v11, ty:F
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->dist2(FF)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v9, v12

    .line 1963
    .local v9, touchRadius:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    const/high16 v13, 0x3f00

    mul-float v1, v12, v13

    .line 1964
    .local v1, FakeHandleRadius:F
    cmpl-float v12, v9, v1

    if-lez v12, :cond_1

    div-float v5, v1, v9

    .line 1965
    .local v5, scale:F
    :goto_0
    mul-float v12, v10, v5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    .line 1966
    mul-float v12, v11, v5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    .line 1967
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updateHandleDrawablePositions(Z)V

    .line 1969
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->dist2(FF)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v2, v12

    .line 1970
    .local v2, currentFakeHandleRadius:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragSnapMargin:F

    add-float v7, v2, v12

    .line 1971
    .local v7, snapRadius:F
    mul-float v6, v7, v7

    .line 1972
    .local v6, snapDistance2:F
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->dist2(FF)F

    move-result v12

    cmpg-float v12, v12, v6

    if-gez v12, :cond_2

    .line 1973
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchTriggered:Z

    .line 1974
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v3, v12, v13

    .line 1975
    .local v3, dragViewX:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v4, v12, v13

    .line 1976
    .local v4, dragViewY:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/DragView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v13, v3

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v4

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/policy/impl/DragView;->move(FF)V

    .line 1977
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updateHandleDrawablePositions(Z)V

    .line 1978
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/TargetDrawable;->getState()[I

    move-result-object v8

    .line 1979
    .local v8, state:[I
    if-eqz v8, :cond_0

    sget-object v12, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_FOCUSED:[I

    invoke-static {v8, v12}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1980
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->vibrate()V

    .line 1981
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    sget-object v13, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v12, v13}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    .line 1987
    .end local v3           #dragViewX:I
    .end local v4           #dragViewY:I
    .end local v8           #state:[I
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->invalidate()V

    .line 1989
    const-string v12, "MediatekGlowPadView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDragMove mTouchTriggered="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchTriggered:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", x="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", y="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    return-void

    .line 1964
    .end local v2           #currentFakeHandleRadius:F
    .end local v5           #scale:F
    .end local v6           #snapDistance2:F
    .end local v7           #snapRadius:F
    :cond_1
    const/high16 v5, 0x3f80

    goto/16 :goto_0

    .line 1984
    .restart local v2       #currentFakeHandleRadius:F
    .restart local v5       #scale:F
    .restart local v6       #snapDistance2:F
    .restart local v7       #snapRadius:F
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchTriggered:Z

    .line 1985
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    sget-object v13, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v12, v13}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    goto :goto_1
.end method

.method private onDragStart(II)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v9, 0x3f00

    .line 1934
    const-string v7, "MediatekGlowPadView"

    const-string v8, "onDragStart"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    int-to-float v7, p1

    iget-object v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/DragView;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/DragView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    sub-float v1, v7, v8

    .line 1938
    .local v1, dragTargetCenterX:F
    int-to-float v7, p2

    iget-object v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/DragView;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/DragView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    sub-float v2, v7, v8

    .line 1939
    .local v2, dragTargetCenterY:F
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->dist2(FF)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v6, v7

    .line 1940
    .local v6, touchRadius:F
    iget v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    mul-float v0, v7, v9

    .line 1941
    .local v0, currentOuterRadius:F
    cmpl-float v7, v6, v0

    if-lez v7, :cond_0

    div-float v5, v0, v6

    .line 1942
    .local v5, scale:F
    :goto_0
    mul-float v3, v1, v5

    .line 1943
    .local v3, limitX:F
    mul-float v4, v2, v5

    .line 1946
    .local v4, limitY:F
    iget-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    float-to-int v8, v3

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 1947
    iget-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    float-to-int v8, v4

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 1949
    iget v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    iput v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 1950
    iget v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    iput v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealY:F

    .line 1952
    iget v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    iput v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    .line 1953
    iget v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    iput v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    .line 1954
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->invalidate()V

    .line 1955
    return-void

    .line 1941
    .end local v3           #limitX:F
    .end local v4           #limitY:F
    .end local v5           #scale:F
    :cond_0
    const/high16 v5, 0x3f80

    goto :goto_0
.end method

.method private refreshPositions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1568
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1576
    :goto_0
    return-void

    .line 1572
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchRecepientRawLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1573
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerRawLocation:[I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getLocationOnScreen([I)V

    .line 1574
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerRawLocation:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchRecepientRawLocation:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 1575
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerRawLocation:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchRecepientRawLocation:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    aput v1, v0, v4

    goto :goto_0
.end method

.method private replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    .locals 6
    .parameter "res"
    .parameter "existingResourceId"
    .parameter "newResourceId"

    .prologue
    .line 1443
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 1444
    :cond_0
    const/4 v2, 0x0

    .line 1462
    :cond_1
    :goto_0
    return v2

    .line 1447
    :cond_2
    const/4 v2, 0x0

    .line 1448
    .local v2, result:Z
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1449
    .local v0, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1450
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1451
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/TargetDrawable;

    .line 1452
    .local v4, target:Lcom/android/internal/policy/impl/TargetDrawable;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/TargetDrawable;->getResourceId()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 1453
    invoke-virtual {v4, p1, p3}, Lcom/android/internal/policy/impl/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1454
    const/4 v2, 0x1

    .line 1450
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1458
    .end local v4           #target:Lcom/android/internal/policy/impl/TargetDrawable;
    :cond_4
    if-eqz v2, :cond_1

    .line 1459
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->requestLayout()V

    goto :goto_0
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 514
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 523
    move v0, v1

    .line 525
    :goto_0
    return v0

    .line 516
    :sswitch_0
    move v0, p2

    .line 517
    goto :goto_0

    .line 519
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 520
    goto :goto_0

    .line 514
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 1178
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 1179
    if-eqz p1, :cond_0

    .line 1180
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->vibrate()V

    .line 1182
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGrabbedState:I

    .line 1183
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 1184
    if-nez p1, :cond_2

    .line 1185
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 1189
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1192
    :cond_1
    return-void

    .line 1187
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private setShouldIntercept(Z)V
    .locals 0
    .parameter "shouldIntercept"

    .prologue
    .line 1606
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchIntercepted:Z

    .line 1607
    return-void
.end method

.method private showAllNewEventViews()V
    .locals 12

    .prologue
    const/high16 v3, 0x3f80

    .line 1891
    const-string v0, "MediatekGlowPadView"

    const-string v1, "showAllNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1894
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 1895
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/LockScreenNewEventView;

    .line 1896
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 1898
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1899
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 1894
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1901
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;
    :cond_0
    return-void
.end method

.method private showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointCloud;->glowManager:Lcom/android/internal/policy/impl/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->start()V

    .line 596
    return-void
.end method

.method private showOtherNewEventViews()V
    .locals 12

    .prologue
    const/high16 v3, 0x3f80

    .line 1861
    const-string v0, "MediatekGlowPadView"

    const-string v1, "showOtherNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1864
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 1865
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/LockScreenNewEventView;

    .line 1866
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    if-eq v11, v0, :cond_0

    .line 1867
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 1869
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1870
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 1864
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1873
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;
    :cond_1
    return-void
.end method

.method private showTargets(Z)V
    .locals 12
    .parameter "animate"

    .prologue
    .line 724
    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 725
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mAnimatingTargets:Z

    .line 726
    if-eqz p1, :cond_0

    const/16 v0, 0x32

    .line 727
    .local v0, delay:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    .line 728
    .local v1, duration:I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 729
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 730
    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/TargetDrawable;

    .line 731
    .local v4, target:Lcom/android/internal/policy/impl/TargetDrawable;
    sget-object v5, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    .line 732
    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    int-to-long v6, v1

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ease"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/android/internal/policy/impl/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "alpha"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "scaleX"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "scaleY"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "delay"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "onUpdate"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    iget-object v10, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    invoke-static {v4, v6, v7, v8}, Lcom/android/internal/policy/impl/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 729
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 726
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #target:Lcom/android/internal/policy/impl/TargetDrawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 727
    .restart local v0       #delay:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 740
    .restart local v1       #duration:I
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/TargetDrawable;

    int-to-long v7, v1

    const/16 v9, 0xe

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "ease"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/android/internal/policy/impl/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "alpha"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "scaleX"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "scaleY"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "delay"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "onUpdate"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    iget-object v11, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "onComplete"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    iget-object v11, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/policy/impl/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->start()V

    .line 750
    return-void
.end method

.method private square(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 1333
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .locals 6
    .parameter "duration"
    .parameter "alpha"

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 956
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 957
    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/Tweener;

    if-eqz v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/Tweener;

    iget-object v1, v1, Lcom/android/internal/policy/impl/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 960
    :cond_0
    int-to-long v1, p1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ease"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/android/internal/policy/impl/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "alpha"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/high16 v5, 0x437f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "delay"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/Tweener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/Tweener;

    .line 964
    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/Tweener;

    iget-object v1, v1, Lcom/android/internal/policy/impl/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 966
    :cond_1
    return-void
.end method

.method private startWaveAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    .line 915
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 916
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PointCloud;->waveManager:Lcom/android/internal/policy/impl/PointCloud$WaveManager;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PointCloud$WaveManager;->setAlpha(F)V

    .line 917
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PointCloud;->waveManager:Lcom/android/internal/policy/impl/PointCloud$WaveManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PointCloud$WaveManager;->setRadius(F)V

    .line 918
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PointCloud;->waveManager:Lcom/android/internal/policy/impl/PointCloud$WaveManager;

    const-wide/16 v2, 0x546

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v8

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "radius"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lcom/android/internal/policy/impl/MediatekGlowPadView$6;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$6;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 930
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->start()V

    .line 931
    return-void
.end method

.method private stopAndHideWaveAnimation()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 911
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PointCloud;->waveManager:Lcom/android/internal/policy/impl/PointCloud$WaveManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PointCloud$WaveManager;->setAlpha(F)V

    .line 912
    return-void
.end method

.method private switchDragViewToState(IIIFF)V
    .locals 10
    .parameter "state"
    .parameter "eventX"
    .parameter "eventY"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2227
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchDrageViewToState enter mDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", new state="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "mPendingDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingDragViewState:I

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", eventX="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", eventY="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimating:Z

    if-eqz v0, :cond_0

    .line 2230
    iput p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingDragViewState:I

    .line 2231
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;

    iput p2, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;->eventX:I

    .line 2232
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;

    iput p3, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;->eventY:I

    .line 2233
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;

    iput p4, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;->velocityX:F

    .line 2234
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;

    iput p5, v0, Lcom/android/internal/policy/impl/MediatekGlowPadView$PendingEvent;->velocityY:F

    .line 2235
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchDrageViewToState exit, mDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mPendingDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :goto_0
    return-void

    .line 2238
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2324
    :goto_1
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchDrageViewToState exit, mDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mPendingDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2240
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 2241
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    .line 2242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewDoingTouch:Z

    .line 2243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimating:Z

    .line 2244
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2245
    .local v2, b:Landroid/graphics/Bitmap;
    iput p2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewEventViewInLockScreenX:I

    .line 2246
    iput p3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewEventViewInLockScreenY:I

    .line 2248
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewEventViewInLockScreenX:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    add-int v3, v0, v1

    .line 2249
    .local v3, registrationX:I
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewEventViewInLockScreenY:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v5, 0x1

    aget v1, v1, v5

    add-int v4, v0, v1

    .line 2251
    .local v4, registrationY:I
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchDown registrationX="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", registrationY="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    new-instance v0, Lcom/android/internal/policy/impl/DragView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/LockScreenLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getScaleX()F

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/policy/impl/DragView;-><init>(Lcom/android/internal/policy/impl/LockScreenLayout;Landroid/graphics/Bitmap;IIIIIIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/DragView;

    .line 2256
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/DragView;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/policy/impl/DragView;->show(II)V

    .line 2258
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->onDragStart(II)V

    .line 2261
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->setVisibility(I)V

    .line 2262
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->hideOtherNewEventViews()V

    .line 2264
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v3           #registrationX:I
    .end local v4           #registrationY:I
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    .line 2265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimating:Z

    .line 2266
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->activateHandle(II)V

    goto/16 :goto_1

    .line 2269
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    .line 2270
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->doIntersectAnimation()V

    goto/16 :goto_1

    .line 2273
    :pswitch_3
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 2276
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    .line 2277
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/DragView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v5, p3

    int-to-float v5, v5

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/policy/impl/DragView;->move(FF)V

    .line 2278
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->onDragMove(II)V

    goto/16 :goto_1

    .line 2282
    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    .line 2283
    invoke-direct {p0, p4, p5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->freeFling(FF)V

    goto/16 :goto_1

    .line 2288
    :pswitch_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchTriggered:Z

    .line 2289
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    .line 2290
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    .line 2291
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->showOtherNewEventViews()V

    .line 2292
    const/16 v0, 0xc8

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->animHandlerBack(II)V

    goto/16 :goto_1

    .line 2295
    :pswitch_6
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    .line 2296
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->handleTrigger(Lcom/android/internal/policy/impl/LockScreenNewEventView;)V

    goto/16 :goto_1

    .line 2300
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    if-eqz v0, :cond_2

    .line 2301
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    .line 2302
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->setEnabled(Z)V

    .line 2304
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    if-eqz v0, :cond_3

    .line 2305
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    .line 2308
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    if-eqz v0, :cond_4

    .line 2309
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->setVisibility(I)V

    .line 2310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    .line 2312
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/DragView;

    if-eqz v0, :cond_5

    .line 2313
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/DragView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/DragView;->remove()V

    .line 2314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/DragView;

    .line 2316
    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 2317
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealY:F

    .line 2318
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    .line 2319
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    .line 2320
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    .line 2321
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingDragViewState:I

    goto/16 :goto_1

    .line 2238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private switchToState(IFF)V
    .locals 6
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 539
    packed-switch p1, :pswitch_data_0

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 541
    :pswitch_0
    iput v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowPadViewState:I

    .line 542
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->deactivateTargets()V

    .line 543
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 544
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->startBackgroundAnimation(IF)V

    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 550
    :pswitch_1
    iput v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowPadViewState:I

    .line 551
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->startBackgroundAnimation(IF)V

    goto :goto_0

    .line 555
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowPadViewState:I

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/TargetDrawable;->setAlpha(F)V

    .line 557
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->deactivateTargets()V

    .line 558
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->showTargets(Z)V

    .line 559
    const/16 v0, 0xc8

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->startBackgroundAnimation(IF)V

    .line 560
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->setGrabbedState(I)V

    .line 561
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->announceTargets()V

    goto :goto_0

    .line 567
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowPadViewState:I

    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/TargetDrawable;->setAlpha(F)V

    .line 569
    invoke-direct {p0, v1, v1, v3, v4}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 574
    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowPadViewState:I

    .line 575
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/TargetDrawable;->setAlpha(F)V

    .line 576
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 580
    :pswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowPadViewState:I

    .line 581
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->doFinish()V

    goto :goto_0

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 1195
    iget v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v3

    .line 1196
    .local v0, tx:F
    iget v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v3

    .line 1197
    .local v1, ty:F
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    if-nez v3, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->dist2(FF)F

    move-result v3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getScaledGlowRadiusSquared()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 1198
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/LockScreenLayout;

    if-eqz v3, :cond_1

    .line 1199
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->hideAllNewEventViews()V

    .line 1201
    :cond_1
    const-string v3, "MediatekGlowPadView"

    const-string v4, "** Handle HIT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchToState(IFF)V

    .line 1203
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updateGlowPosition(FF)V

    .line 1205
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragging:Z

    .line 1208
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateGlobalLayoutListenr(Z)V
    .locals 2
    .parameter "shouldEnable"

    .prologue
    .line 1594
    if-eqz p1, :cond_1

    .line 1595
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlobalLayoutListenerSet:Z

    if-nez v0, :cond_0

    .line 1596
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlobalLayoutListenerSet:Z

    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1600
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlobalLayoutListenerSet:Z

    goto :goto_0
.end method

.method private updateGlowPosition(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PointCloud;->glowManager:Lcom/android/internal/policy/impl/PointCloud$GlowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PointCloud$GlowManager;->setX(F)V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PointCloud;->glowManager:Lcom/android/internal/policy/impl/PointCloud$GlowManager;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/PointCloud$GlowManager;->setY(F)V

    .line 1036
    return-void
.end method

.method private updateHandleDrawablePositions(Z)V
    .locals 11
    .parameter "force"

    .prologue
    .line 1734
    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    .line 1767
    :cond_0
    :goto_0
    return-void

    .line 1737
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    if-eqz v8, :cond_0

    .line 1738
    if-nez p1, :cond_3

    .line 1739
    iget-object v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/TargetDrawable;->getX()F

    move-result v6

    .line 1740
    .local v6, oldX:F
    iget-object v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/TargetDrawable;->getY()F

    move-result v7

    .line 1741
    .local v7, oldY:F
    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    sub-float/2addr v8, v6

    float-to-int v0, v8

    .line 1742
    .local v0, deltaX:I
    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    sub-float/2addr v8, v7

    float-to-int v1, v8

    .line 1743
    .local v1, deltaY:I
    mul-int v8, v0, v0

    mul-int v9, v1, v1

    add-int v3, v8, v9

    .line 1744
    .local v3, distanceSqure:I
    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchSlopSqure:I

    if-le v3, v8, :cond_2

    .line 1745
    int-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 1746
    .local v2, distance:I
    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchSlop:I

    mul-int/2addr v8, v0

    div-int v4, v8, v2

    .line 1747
    .local v4, offsetX:I
    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchSlop:I

    mul-int/2addr v8, v1

    div-int v5, v8, v2

    .line 1748
    .local v5, offsetY:I
    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealX:F

    int-to-float v9, v4

    add-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 1749
    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealY:F

    int-to-float v9, v5

    add-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealY:F

    .line 1751
    const-string v8, "MediatekGlowPadView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "oldX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", oldY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deltaX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deltaY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", distance="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", offsetX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", offsetY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mFakeHandleRealX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealX:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mFakeHandleRealY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealY:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->invalidate()V

    .line 1764
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v2           #distance:I
    .end local v3           #distanceSqure:I
    .end local v4           #offsetX:I
    .end local v5           #offsetY:I
    .end local v6           #oldX:F
    .end local v7           #oldY:F
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    iget v9, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealX:F

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/TargetDrawable;->setX(F)V

    .line 1765
    iget-object v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    iget v9, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealY:F

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/TargetDrawable;->setY(F)V

    goto/16 :goto_0

    .line 1757
    .restart local v0       #deltaX:I
    .restart local v1       #deltaY:I
    .restart local v3       #distanceSqure:I
    .restart local v6       #oldX:F
    .restart local v7       #oldY:F
    :cond_2
    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    iput v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 1758
    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    iput v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealY:F

    goto :goto_1

    .line 1761
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v3           #distanceSqure:I
    .end local v6           #oldX:F
    .end local v7           #oldY:F
    :cond_3
    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    iput v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 1762
    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    iput v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleRealY:F

    goto :goto_1
.end method

.method private updatePointCloudPosition(FF)V
    .locals 1
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/PointCloud;->setCenter(FF)V

    .line 1308
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 10
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1293
    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1294
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TargetDrawable;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1295
    .local v3, size:I
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v3

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 1296
    .local v0, alpha:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1297
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/TargetDrawable;

    .line 1298
    .local v4, targetIcon:Lcom/android/internal/policy/impl/TargetDrawable;
    int-to-float v6, v2

    mul-float v1, v0, v6

    .line 1299
    .local v1, angle:F
    invoke-virtual {v4, p1}, Lcom/android/internal/policy/impl/TargetDrawable;->setPositionX(F)V

    .line 1300
    invoke-virtual {v4, p2}, Lcom/android/internal/policy/impl/TargetDrawable;->setPositionY(F)V

    .line 1301
    iget v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/TargetDrawable;->setX(F)V

    .line 1302
    iget v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/TargetDrawable;->setY(F)V

    .line 1296
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1304
    .end local v1           #angle:F
    .end local v4           #targetIcon:Lcom/android/internal/policy/impl/TargetDrawable;
    :cond_0
    return-void
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 756
    :cond_0
    return-void
.end method


# virtual methods
.method public createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "v"
    .parameter "canvas"

    .prologue
    .line 2115
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2117
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2118
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;Z)V

    .line 2119
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2121
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1529
    const/4 v0, 0x0

    .line 1530
    .local v0, handled:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1531
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1533
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public doShakeAnimation()V
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/LockScreenLayout;

    if-eqz v0, :cond_0

    .line 2339
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/LockScreenLayout;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenLayout;->beginShakeAnimation()V

    .line 2341
    :cond_0
    return-void
.end method

.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method public getResourceIdForTarget(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1407
    if-ltz p1, :cond_1

    .line 1408
    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/TargetDrawable;

    .line 1409
    .local v0, drawable:Lcom/android/internal/policy/impl/TargetDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1413
    .end local v0           #drawable:Lcom/android/internal/policy/impl/TargetDrawable;
    .local v1, resId:I
    :goto_0
    return v1

    .line 1409
    .end local v1           #resId:I
    .restart local v0       #drawable:Lcom/android/internal/policy/impl/TargetDrawable;
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TargetDrawable;->getResourceId()I

    move-result v1

    goto :goto_0

    .line 1411
    .end local v0           #drawable:Lcom/android/internal/policy/impl/TargetDrawable;
    :cond_1
    const v1, 0x10802fe

    .restart local v1       #resId:I
    goto :goto_0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 844
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetPosition(I)I
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 1432
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1433
    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TargetDrawable;

    .line 1434
    .local v1, target:Lcom/android/internal/policy/impl/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1438
    .end local v0           #i:I
    .end local v1           #target:Lcom/android/internal/policy/impl/TargetDrawable;
    :goto_1
    return v0

    .line 1432
    .restart local v0       #i:I
    .restart local v1       #target:Lcom/android/internal/policy/impl/TargetDrawable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1438
    .end local v1           #target:Lcom/android/internal/policy/impl/TargetDrawable;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 823
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetResourceId:I

    return v0
.end method

.method public getWaveCenterX()F
    .locals 1

    .prologue
    .line 2329
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    return v0
.end method

.method public getWaveCenterY()F
    .locals 1

    .prologue
    .line 2334
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1581
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1582
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updateGlobalLayoutListenr(Z)V

    .line 1583
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1588
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1589
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updateGlobalLayoutListenr(Z)V

    .line 1590
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 1312
    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/PointCloud;->draw(Landroid/graphics/Canvas;)V

    .line 1313
    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1314
    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1315
    .local v1, ntargets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1316
    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/TargetDrawable;

    .line 1317
    .local v2, target:Lcom/android/internal/policy/impl/TargetDrawable;
    if-eqz v2, :cond_0

    .line 1318
    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1315
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1321
    .end local v2           #target:Lcom/android/internal/policy/impl/TargetDrawable;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1322
    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    if-eqz v3, :cond_2

    .line 1323
    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1324
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updateHandleDrawablePositions(Z)V

    .line 1326
    :cond_2
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1154
    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1156
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1167
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1168
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1170
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1158
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1161
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1164
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1156
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1256
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1257
    sub-int v5, p4, p2

    .line 1258
    .local v5, width:I
    sub-int v0, p5, p3

    .line 1262
    .local v0, height:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/TargetDrawable;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1263
    .local v4, placementWidth:F
    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/TargetDrawable;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1264
    .local v3, placementHeight:F
    iget v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHorizontalInset:I

    int-to-float v6, v6

    int-to-float v7, v5

    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mMaxTargetWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1266
    .local v1, newWaveCenterX:F
    iget v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVerticalInset:I

    int-to-float v6, v6

    int-to-float v7, v0

    iget v8, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mMaxTargetHeight:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v2, v6, v7

    .line 1269
    .local v2, newWaveCenterY:F
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mInitialLayout:Z

    if-eqz v6, :cond_0

    .line 1270
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->stopAndHideWaveAnimation()V

    .line 1271
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->hideTargets(ZZ)V

    .line 1272
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mInitialLayout:Z

    .line 1275
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->setPositionX(F)V

    .line 1276
    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/internal/policy/impl/TargetDrawable;->setPositionY(F)V

    .line 1278
    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->setPositionX(F)V

    .line 1279
    iget-object v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/internal/policy/impl/TargetDrawable;->setPositionY(F)V

    .line 1281
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updateTargetPositions(FF)V

    .line 1282
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updatePointCloudPosition(FF)V

    .line 1283
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updateGlowPosition(FF)V

    .line 1285
    iput v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F

    .line 1286
    iput v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F

    .line 1288
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->dump()V

    .line 1289
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 531
    .local v3, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 532
    .local v2, minimumHeight:I
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->resolveMeasured(II)I

    move-result v1

    .line 533
    .local v1, computedWidth:I
    invoke-direct {p0, p2, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->resolveMeasured(II)I

    move-result v0

    .line 534
    .local v0, computedHeight:I
    sub-int v4, v1, v3

    sub-int v5, v0, v2

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->computeInsets(II)V

    .line 535
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->setMeasuredDimension(II)V

    .line 536
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x6

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1796
    const-string v5, "MediatekGlowPadView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onTouch event.action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getX()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getY()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getRawX()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getRawY()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", v="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mCurrentNewEventView="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mDragViewDoingTouch="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewDoingTouch:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mGlowPadViewState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowPadViewState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iget v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowPadViewState:I

    if-eqz v5, :cond_1

    .line 1840
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    move-object v8, p1

    .line 1803
    check-cast v8, Lcom/android/internal/policy/impl/LockScreenNewEventView;

    .line 1804
    .local v8, newEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;
    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    if-ne p1, v5, :cond_0

    .line 1807
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 1808
    .local v6, action:I
    if-nez v6, :cond_3

    .line 1809
    check-cast p1, Lcom/android/internal/policy/impl/LockScreenNewEventView;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    .line 1811
    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    neg-float v10, v10

    float-to-int v10, v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    neg-float v11, v11

    float-to-int v11, v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 1813
    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->computeOwnerNewEventViewMotionOffset(Landroid/view/View;)V

    .line 1814
    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v0, v10, v0

    neg-int v0, v0

    iget-object v10, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v10, v10, v9

    neg-int v10, v10

    invoke-virtual {v5, v0, v10}, Landroid/graphics/Point;->offset(II)V

    .line 1816
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {p2, v0, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1818
    const-string v0, "MediatekGlowPadView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTouch event.getX()="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", event.getY()="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mPoint.x="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mPoint.y="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 1823
    .local v7, handled:Z
    const-string v0, "MediatekGlowPadView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTouch handled="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mTapTimeOut="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTapTimeOut:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mTouchTriggered="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchTriggered:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    if-nez v7, :cond_4

    .line 1826
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 1827
    .local v2, eventX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 1828
    .local v3, eventY:I
    if-ne v6, v9, :cond_6

    .line 1829
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchTriggered:Z

    if-eqz v0, :cond_5

    .line 1830
    const/4 v1, 0x5

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    .end local v2           #eventX:I
    .end local v3           #eventY:I
    :cond_4
    :goto_1
    move v0, v9

    .line 1840
    goto/16 :goto_0

    .restart local v2       #eventX:I
    .restart local v3       #eventY:I
    :cond_5
    move-object v0, p0

    move v5, v4

    .line 1832
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    goto :goto_1

    .line 1834
    :cond_6
    const/4 v0, 0x3

    if-ne v6, v0, :cond_4

    .line 1835
    iget v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    const/4 v5, 0x7

    if-eq v0, v5, :cond_4

    move-object v0, p0

    move v5, v4

    .line 1836
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 970
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 972
    .local v0, action:I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchDropped:Z

    .line 973
    .local v2, shouldDropTouch:Z
    packed-switch v0, :pswitch_data_0

    .line 986
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_2

    .line 1030
    :cond_1
    :goto_1
    return v3

    .line 975
    :pswitch_1
    iget v4, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    const/4 v5, 0x7

    if-ge v4, v5, :cond_0

    .line 976
    const-string v4, "MediatekGlowPadView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent return directly mDragViewState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchDropped:Z

    .line 978
    const/4 v2, 0x1

    goto :goto_0

    .line 983
    :pswitch_2
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchDropped:Z

    goto :goto_0

    .line 990
    :cond_2
    const/4 v1, 0x0

    .line 991
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_1

    .line 1029
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->invalidate()V

    .line 1030
    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 993
    :pswitch_3
    const-string v4, "MediatekGlowPadView"

    const-string v5, "*** DOWN ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 995
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 996
    const/4 v1, 0x1

    .line 997
    goto :goto_2

    .line 1000
    :pswitch_4
    const-string v4, "MediatekGlowPadView"

    const-string v5, "*** MOVE ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1002
    const/4 v1, 0x1

    .line 1003
    goto :goto_2

    .line 1006
    :pswitch_5
    const-string v4, "MediatekGlowPadView"

    const-string v5, "*** UP ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mActionCancel:Z

    .line 1009
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1010
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 1011
    const/4 v1, 0x1

    .line 1012
    iget-object v4, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/LockScreenLayout;

    if-eqz v4, :cond_3

    .line 1013
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->showAllNewEventViews()V

    goto :goto_2

    .line 1018
    :pswitch_6
    const-string v4, "MediatekGlowPadView"

    const-string v5, "*** CANCEL ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mActionCancel:Z

    .line 1021
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1022
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 1023
    const/4 v1, 0x1

    .line 1024
    iget-object v4, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/LockScreenLayout;

    if-eqz v4, :cond_3

    .line 1025
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->showAllNewEventViews()V

    goto :goto_2

    .line 973
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 991
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->pingInternal()V

    .line 887
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->doShakeAnimation()V

    .line 888
    return-void
.end method

.method public pingInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 891
    iget v4, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFeedbackCount:I

    if-lez v4, :cond_1

    .line 892
    const/4 v0, 0x1

    .line 893
    .local v0, doWaveAnimation:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    .line 896
    .local v3, waveAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/Tweener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 897
    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/Tweener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    .line 898
    .local v1, t:J
    const-wide/16 v4, 0x2a3

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 899
    const/4 v0, 0x0

    .line 903
    .end local v1           #t:J
    :cond_0
    if-eqz v0, :cond_1

    .line 904
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->startWaveAnimation()V

    .line 907
    .end local v0           #doWaveAnimation:Z
    .end local v3           #waveAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;
    :cond_1
    return-void
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 10
    .parameter "component"
    .parameter "name"
    .parameter "existingResId"

    .prologue
    .line 1475
    if-nez p3, :cond_1

    const/4 v5, 0x0

    .line 1503
    :cond_0
    :goto_0
    return v5

    .line 1477
    :cond_1
    const/4 v5, 0x0

    .line 1478
    .local v5, replaced:Z
    if-eqz p1, :cond_2

    .line 1480
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1482
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1484
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 1485
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1486
    .local v1, iconResId:I
    if-eqz v1, :cond_2

    .line 1487
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1488
    .local v6, res:Landroid/content/res/Resources;
    invoke-direct {p0, v6, p3, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 1499
    .end local v1           #iconResId:I
    .end local v2           #metaData:Landroid/os/Bundle;
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_2
    :goto_1
    if-nez v5, :cond_0

    .line 1501
    iget-object v7, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v7, p3, p3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z

    goto :goto_0

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "MediatekGlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1494
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 1495
    .local v3, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "MediatekGlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public reset(Z)V
    .locals 6
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 940
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 941
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 942
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->startBackgroundAnimation(IF)V

    .line 943
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->stopAndHideWaveAnimation()V

    .line 944
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->hideTargets(ZZ)V

    .line 945
    const/4 v0, 0x0

    invoke-direct {p0, v2, v2, v4, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 947
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 948
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 949
    const/4 v1, 0x7

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    .line 951
    invoke-static {}, Lcom/android/internal/policy/impl/Tweener;->reset()V

    .line 952
    return-void
.end method

.method public resumeAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 490
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->start()V

    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->start()V

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->start()V

    .line 494
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 853
    iput p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDirectionDescriptionsResourceId:I

    .line 854
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 857
    :cond_0
    return-void
.end method

.method public setEnableTarget(IZ)V
    .locals 3
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 1417
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1418
    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TargetDrawable;

    .line 1419
    .local v1, target:Lcom/android/internal/policy/impl/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1420
    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/TargetDrawable;->setEnabled(Z)V

    .line 1424
    .end local v1           #target:Lcom/android/internal/policy/impl/TargetDrawable;
    :cond_0
    return-void

    .line 1417
    .restart local v1       #target:Lcom/android/internal/policy/impl/TargetDrawable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setHandleDrawableImage(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 802
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/policy/impl/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 805
    :cond_0
    return-void
.end method

.method public setLockScreenView(Lcom/android/internal/policy/impl/LockScreenLayout;)V
    .locals 0
    .parameter "lockScreenLayout"

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/LockScreenLayout;

    .line 1618
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;

    .line 1330
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 832
    iput p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDescriptionsResourceId:I

    .line 833
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 836
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 816
    iput p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewTargetResources:I

    .line 820
    :goto_0
    return-void

    .line 818
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setTouchRecepient(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1517
    if-eqz p1, :cond_0

    .line 1518
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    .line 1519
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updateGlobalLayoutListenr(Z)V

    .line 1520
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->refreshPositions()V

    .line 1525
    :goto_0
    return-void

    .line 1522
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    .line 1523
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->updateGlobalLayoutListenr(Z)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 874
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 875
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public suspendAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 485
    return-void
.end method

.method public syncUnReadEventView(Lcom/android/internal/policy/impl/UnReadEventView;)V
    .locals 7
    .parameter "unReadEventView"

    .prologue
    const/4 v6, 0x0

    .line 1621
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/UnReadEventView;

    .line 1622
    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/UnReadEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1623
    .local v2, newEventViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/LockScreenNewEventView;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1624
    :cond_0
    const-string v3, "MediatekGlowPadView"

    const-string v4, "syncUnReadEventView get empty newEventViews"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :goto_0
    return-void

    .line 1627
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1628
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1629
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1628
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1631
    :cond_2
    new-instance v3, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;Lcom/android/internal/policy/impl/MediatekGlowPadView$1;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mSimpleOnGestureListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;

    .line 1632
    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mSimpleOnGestureListener:Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1633
    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 1635
    const/high16 v3, 0x4040

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchSlop:I

    .line 1636
    iget v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchSlop:I

    iget v4, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchSlop:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchSlopSqure:I

    .line 1637
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getNewEventBitmapWidth()I

    move-result v3

    int-to-float v4, v3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getNewEventBitmapHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->dist2(FF)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragSnapMargin:F

    goto :goto_0
.end method
