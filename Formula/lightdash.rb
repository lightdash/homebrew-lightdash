class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2835.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2835.1/lightdash-cli-0.2835.1-macos-arm64.tar.gz"
      sha256 "ee9baf706749f93b135cf1c52a65ba3b815c6e5c44290b6b2386a313999d1fba"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2835.1/lightdash-cli-0.2835.1-macos-x64.tar.gz"
      sha256 "adbd4f40fb858d65c9e4b7e1c3eac64202757e12d2ac701a3f377929ec20a44d"
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
