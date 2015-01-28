.class public Lcom/android/camera/ui/ModePickerRotateLayout;
.super Landroid/view/ViewGroup;
.source "ModePickerRotateLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final ORIENTATION_OFFSET:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "ModePickerRotateLayout"


# instance fields
.field private mChild:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/ModePickerRotateLayout;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 51
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 56
    sub-int v1, p4, p2

    .line 57
    .local v1, width:I
    sub-int v0, p5, p3

    .line 58
    .local v0, height:I
    const/16 v2, 0x10e

    sparse-switch v2, :sswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 61
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 65
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 58
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/16 v3, 0x10e

    const/4 v4, 0x0

    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, w:I
    const/4 v0, 0x0

    .line 76
    .local v0, h:I
    sparse-switch v3, :sswitch_data_0

    .line 92
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 94
    sparse-switch v3, :sswitch_data_1

    .line 114
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    const/high16 v3, -0x3c79

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 115
    return-void

    .line 79
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 80
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 81
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 82
    goto :goto_0

    .line 85
    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 86
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 87
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 88
    goto :goto_0

    .line 96
    :sswitch_2
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 97
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 100
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 101
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 104
    :sswitch_4
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 105
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 108
    :sswitch_5
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 109
    iget-object v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 76
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 94
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public setOrientation(IZ)V
    .locals 3
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 125
    sget-boolean v0, Lcom/android/camera/ui/ModePickerRotateLayout;->LOG:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "ModePickerRotateLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    add-int/lit16 v0, p1, -0x10e

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 129
    iget v0, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 130
    iput p1, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mOrientation:I

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mChild:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/ModePickerRotateLayout;->mOrientation:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 134
    :cond_1
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method
