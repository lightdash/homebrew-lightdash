class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3085.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3085.1/lightdash-cli-0.3085.1-macos-arm64.tar.gz"
      sha256 "e6ee10799adbf17f6be83edc4c3c8dee2809322f2d816cd013433bfaed8b2d8b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3085.1/lightdash-cli-0.3085.1-macos-x64.tar.gz"
      sha256 "8350350226c1dced73b1d528efa10c4e20b08a641be827b577624fc22dc858f2"
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
