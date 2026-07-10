class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3361.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3361.0/lightdash-cli-0.3361.0-macos-arm64.tar.gz"
      sha256 "a40844290c67e33a90ee2a0af71fa5767ffad4d5a7f7a4f57ca05c9869101764"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3361.0/lightdash-cli-0.3361.0-macos-x64.tar.gz"
      sha256 "eb4352f74b55699f0556ba3948a5f255547c98be89161b55fe74722604334756"
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
