class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2937.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2937.0/lightdash-cli-0.2937.0-macos-arm64.tar.gz"
      sha256 "31cc98ebfa776d4771b7c706395560f91d887f8e02b0ac04a15c50621d093c40"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2937.0/lightdash-cli-0.2937.0-macos-x64.tar.gz"
      sha256 "dde014241666dae470bf1ecd82d6ddba558aae1e3ee235590156dcd6fd859203"
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
