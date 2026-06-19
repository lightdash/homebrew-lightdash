class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3200.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3200.0/lightdash-cli-0.3200.0-macos-arm64.tar.gz"
      sha256 "ec9681a42366f2cfee0c2b5d953410dc3505ca6558c9f02bf56777a098c9b86b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3200.0/lightdash-cli-0.3200.0-macos-x64.tar.gz"
      sha256 "d51f71776de3342b9e21dac671d2b296a65efcbc2edb0a6b6b89f76f2d90ba89"
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
