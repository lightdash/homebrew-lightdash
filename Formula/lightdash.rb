class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2936.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2936.1/lightdash-cli-0.2936.1-macos-arm64.tar.gz"
      sha256 "6481d21f136b6b489660d1ddbcb0678c84addf2779f932a0beb6a738a4c53b09"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2936.1/lightdash-cli-0.2936.1-macos-x64.tar.gz"
      sha256 "41774cf5d760c629f2b98bbfd7fb09a234073ef4a51f74d110d19ced91168826"
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
