class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3265.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3265.1/lightdash-cli-0.3265.1-macos-arm64.tar.gz"
      sha256 "18eed2f95cddb987b19598d2bcbaa7508f249c25d8bec26cef897446a14dc735"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3265.1/lightdash-cli-0.3265.1-macos-x64.tar.gz"
      sha256 "83213a0a073cc3f7e83d722f3d04ede77db56afd8b80fae095e2ae7f5901e326"
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
