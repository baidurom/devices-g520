.class final Lcom/android/internal/policy/impl/Ease$Quart$1;
.super Ljava/lang/Object;
.source "Ease.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/Ease$Quart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .parameter "input"

    .prologue
    const/high16 v0, 0x3f80

    .line 71
    div-float/2addr p1, v0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    return v0
.end method
