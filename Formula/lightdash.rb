class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2622.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2622.1/lightdash-cli-0.2622.1-macos-arm64.tar.gz"
      sha256 "c599487fc2750193ad51a5ccfe0084acbf472d4119c4574f0d7918be0f3935b1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2622.1/lightdash-cli-0.2622.1-macos-x64.tar.gz"
      sha256 "c08cb006da32300f03bac6b2cb51a40dacaf2d3ea8e294e2c5bd785cd57d3695"
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
