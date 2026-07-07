class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3318.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3318.0/lightdash-cli-0.3318.0-macos-arm64.tar.gz"
      sha256 "2777e64d0cba1e1fd96b7d33318543ba8594f7a5aa08c2304162b4fe3134065c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3318.0/lightdash-cli-0.3318.0-macos-x64.tar.gz"
      sha256 "a505e9d9c2dfc9faad0d45ff831c9dcd21812f428f9b82ff63db8469a9307e9e"
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
