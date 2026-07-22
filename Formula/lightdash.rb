class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3447.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3447.2/lightdash-cli-0.3447.2-macos-arm64.tar.gz"
      sha256 "14e7c688487c2f093c301d3018c31d72f1e676b64a52852a50b34e2420164685"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3447.2/lightdash-cli-0.3447.2-macos-x64.tar.gz"
      sha256 "b19c95b6f184ee66800ba60b497375947d2a90d9d5a4c4eab8e710a3c284ad86"
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
