class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.324.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.324.0/lightdash-cli-2.324.0-macos-arm64.tar.gz"
      sha256 "b30a894803759bd99ea091c7ad9981f725f9d899419d248d8ce052f6414549a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.324.0/lightdash-cli-2.324.0-macos-x64.tar.gz"
      sha256 "5d0913d6632885900fddbb3131047f12c4a063eab81367810810e6f53a003c59"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.324.0/lightdash-cli-2.324.0-linux-x64.tar.gz"
    sha256 "318f739945f2b2407d17ed3ca96dc947c4a5653129d25d3bdd76e5bc1fd773a2"

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
