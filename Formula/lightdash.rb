class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.8/lightdash-cli-0.2270.8-macos-arm64.tar.gz"
      sha256 "b7940580db6247b96950cdf2b57c7f37ac3037b29dbdbdb16f04fa497248c3a1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.8/lightdash-cli-0.2270.8-macos-x64.tar.gz"
      sha256 "8bc655b702fb3f03697db8b43f96931e24976628077a69d0f839ad5dd6b9724f"
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
