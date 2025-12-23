class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2271.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2271.3/lightdash-cli-0.2271.3-macos-arm64.tar.gz"
      sha256 "a7a649df31ae6c4cd9aeb7d331dd2507c9b980681b974c63f80dd53b0113e25f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2271.3/lightdash-cli-0.2271.3-macos-x64.tar.gz"
      sha256 "8bcafabde868fe02ba8f1265d2771b299eab9cfd061e98f7dee89b851757f83a"
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
