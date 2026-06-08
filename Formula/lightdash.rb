class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3111.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3111.0/lightdash-cli-0.3111.0-macos-arm64.tar.gz"
      sha256 "1e5e94782c5205bf624d849c2022055ded90bf0897e92a1d40c5d05f8792fc51"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3111.0/lightdash-cli-0.3111.0-macos-x64.tar.gz"
      sha256 "d64e11733187967bbd24ddcbc7da5c85bb8b8d44a0be08386eb528501c2efe1b"
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
