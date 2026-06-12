class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3157.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3157.0/lightdash-cli-0.3157.0-macos-arm64.tar.gz"
      sha256 "36746484ea45d62b37e0e736375e2a2b506c7a76d64c0de065034956f54286f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3157.0/lightdash-cli-0.3157.0-macos-x64.tar.gz"
      sha256 "1dd36334d732361e396aead09a1b33566164b15978fb77093547262e4095729c"
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
