class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2566.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2566.0/lightdash-cli-0.2566.0-macos-arm64.tar.gz"
      sha256 "8a5c3c8a700732d0e8fa56de30dfe5d5920d52ca5a7a4e912d5a532e42e5c6cc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2566.0/lightdash-cli-0.2566.0-macos-x64.tar.gz"
      sha256 "407ea4837ed5f31675fcbc4334acb2223bae5ef60d75646d326f46d5659e59f9"
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
