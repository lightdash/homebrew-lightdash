class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3395.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3395.2/lightdash-cli-0.3395.2-macos-arm64.tar.gz"
      sha256 "b7c573cbfe84598a547cddcc73a6a233246c8586e7973eb2a6eacc5253dbc1a0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3395.2/lightdash-cli-0.3395.2-macos-x64.tar.gz"
      sha256 "2a2b740fc914aec37e46b576e69d5b66c49b2abb0f98f0c678258129927aad5f"
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
