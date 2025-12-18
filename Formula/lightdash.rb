class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2265.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2265.3/lightdash-cli-0.2265.3-macos-arm64.tar.gz"
      sha256 "006c2781839fd9dc41ce124f08ce8e3e6c272ea2a6da338412b45118e70adf20"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2265.3/lightdash-cli-0.2265.3-macos-x64.tar.gz"
      sha256 "1ae33a396eed8ac6b1e383b2650546214dd376c9e0b51b053df8e971fd686f61"
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
