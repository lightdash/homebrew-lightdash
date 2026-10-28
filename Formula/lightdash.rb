class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.93.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.93.0/lightdash-cli-3.93.0-macos-arm64.tar.gz"
      sha256 "62db52958d044963864b8777471b7b0cb67ce00659d83c9b7eae734616431f65"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.93.0/lightdash-cli-3.93.0-macos-x64.tar.gz"
      sha256 "74d749264e8fa6908deb9e85dece84b851c9645756644ac0fed2be3fdff83991"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.93.0/lightdash-cli-3.93.0-linux-x64.tar.gz"
    sha256 "3817ae776f7234bf3c445e495628fa168522943d610a2ddb3b16096ea12132ab"

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
