class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.13.0/lightdash-cli-3.13.0-macos-arm64.tar.gz"
      sha256 "a0052029141887e5c7ee68e97fa029c8761fef9420f6aa596872763748e4950d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.13.0/lightdash-cli-3.13.0-macos-x64.tar.gz"
      sha256 "3f4cf92757b4f64a625728c4b3a6049b4204e7c7708c0560d090249258a1408f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.13.0/lightdash-cli-3.13.0-linux-x64.tar.gz"
    sha256 "a6ae58b16ebd802751417b308d6b0d764b395b9c83a1ce55d4767d0e30002f04"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
