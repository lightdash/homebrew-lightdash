class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2976.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2976.4/lightdash-cli-0.2976.4-macos-arm64.tar.gz"
      sha256 "4053d18f954e3057b5cfa3554906b60f3f830271e3ed3670ab8c51ef661c393c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2976.4/lightdash-cli-0.2976.4-macos-x64.tar.gz"
      sha256 "1182a5010e236e2409f824097672896863ee08d6e5ee0014c7b7fe77631b976f"
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
