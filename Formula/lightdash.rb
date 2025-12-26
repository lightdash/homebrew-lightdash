class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2282.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2282.1/lightdash-cli-0.2282.1-macos-arm64.tar.gz"
      sha256 "30c3ab32ba2b7b0cefd57545d8b92c0788e079eee9d91f04a016315f2218f45a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2282.1/lightdash-cli-0.2282.1-macos-x64.tar.gz"
      sha256 "ea8f0e4bd7710268798e8abcecf8adbc1bf8ea498de0a31c5b52421f03347bde"
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
