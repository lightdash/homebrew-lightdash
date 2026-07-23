class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3468.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3468.0/lightdash-cli-0.3468.0-macos-arm64.tar.gz"
      sha256 "a1c0aa1bd4fe5f3a0dd2703b3e075adfbe817a032c34f9e2a45add0483f67e14"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3468.0/lightdash-cli-0.3468.0-macos-x64.tar.gz"
      sha256 "6de1be0aa40ad06f3f4192247696819804665a732ff07adbe518a147ceb2f479"
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
