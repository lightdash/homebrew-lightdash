class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2592.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2592.3/lightdash-cli-0.2592.3-macos-arm64.tar.gz"
      sha256 "b0c3682e06de8e15ef92b43289fea48091601372e26987bc8a263471758f157f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2592.3/lightdash-cli-0.2592.3-macos-x64.tar.gz"
      sha256 "99f842031ba52265d67d5cb572bff0548de2270137e3db6cc0b31232e8f7f85a"
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
