class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.143.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.143.0/lightdash-cli-2.143.0-macos-arm64.tar.gz"
      sha256 "cae6350c320313ba5bd6aa11dc1cf65b3f6c3d03cedc483649ed8defb5a05b46"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.143.0/lightdash-cli-2.143.0-macos-x64.tar.gz"
      sha256 "399b2b4c583cd5d7da3b611441ea8b3a137a7f9b6c9a324565f6dbd3e5968a98"
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
