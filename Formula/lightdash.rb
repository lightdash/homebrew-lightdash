class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.211.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.211.2/lightdash-cli-2.211.2-macos-arm64.tar.gz"
      sha256 "095f0759deac7f468dfd9149c362e557bc6763728c1c94e439e780a15894e23a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.211.2/lightdash-cli-2.211.2-macos-x64.tar.gz"
      sha256 "9aaf9d9c5cdfdee34f446174f1f1247d77e161717943cb9551e35e3d75a078b0"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
